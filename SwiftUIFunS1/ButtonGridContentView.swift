//
//  ButtonGridContentView.swift
//  SwiftUIFunTemp
//
//  Created by Gina Sprint on 11/30/20.
//

import SwiftUI

import SwiftUI

struct ButtonGridContentView: View {
    var body: some View {
        VStack(spacing: 8, content: {
            ForEach(0..<3, content: { i in
                HStack(spacing: 8, content: {
                    ForEach(0..<3, content: { j in
                        let buttonIndex = i * 3 + j
                        Button(action: {
                            print("button tapped index: \(buttonIndex)")
                        }, label: {
                            Text("Button\(buttonIndex)")
                                .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
                                .background(Color.orange)
                        })
                    })
                })
            })
        })
        .padding()
    }
}

struct ButtonGridContentView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonGridContentView()
    }
}
