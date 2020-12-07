//
//  InitialContentView.swift
//  SwiftUIFunS1
//
//  Created by Gina Sprint on 12/7/20.
//

import SwiftUI

struct InitialContentView: View {
    
    @State var username: String = ""
    @State var secondViewShowing: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 16, content: {
                TextField("Enter your username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                NavigationLink("Log In", destination: SecondContentView(username: username, secondViewShowing: $secondViewShowing), isActive: $secondViewShowing)
                    .navigationBarTitle("Log In", displayMode: .inline)
                
            })
            .padding()
        }
    }
}

struct InitialContentView_Previews: PreviewProvider {
    static var previews: some View {
        InitialContentView()
    }
}
