//
//  ContentView.swift
//  SwiftUIFunS1
//
//  Created by Gina Sprint on 11/30/20.
//

import SwiftUI

// MARK: - SwiftUI
// a "declarative" framework for building UIs for Apple devices (iOS, ipadOS, macOS,...)
// SwiftUI released with iOS 13 and Xcode 11
// there are some major differences/improvements from UIKit/IB/storyboarding to SwiftUI
// check out https://goshdarnswiftui.com/ for more details

// I'll note a few major changes/improvements
// UIKit uses MVC, SwiftUI uses MVVM (model-view-viewmodel)
// SwiftUI is declarative, meaning...
// we declare how our UI looks and what state it is bound to, and the framework figures out the rest
// our views as being "reactive"... think about our views as a dashboard that is always synchronized to the underlying app state they represent

// demos
// 1. TextField, Button, and an Alert (like AlertFun)
// 2. TextField, Button, and a "segue" to a second screen (like MultipleViewControllersFun)
// 3. 3x3 grid of Buttons that fills the available screen space (like AutoLayoutFun)
// 4. List of dogs (like TableViewFun)

struct ContentView: View {
    @State var userString: String = ""
    @State var alertIsVisible: Bool = false
    // @State means this propery is bound to a view so they are always in sync (read/write)
    
    // body is a computed property
    // return a View
    // the body is the dashboard
    var body: some View {
        // declare a View struct
        // and we "chain" modifiers onto the View
        // to customize
//        Text("Hello, Monday!!")
//            .padding()
//            .foregroundColor(Color.green)
//            .border(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
        VStack(alignment: .center, spacing: 16, content: {
            TextField("Enter any value to echo back", text: $userString)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                print("button tapped")
                alertIsVisible = true
            }, label: {
                Text("Echo Back")
            })
            .alert(isPresented: $alertIsVisible, content: {
                Alert(title: Text("Echo Back"), message: Text(userString), dismissButton: .default(Text("Okay"), action: {
                    userString = ""
                }))
            })
            Spacer() // take up available space
        })
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
