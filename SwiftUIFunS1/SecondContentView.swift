//
//  SecondContentView.swift
//  SwiftUIFunS1
//
//  Created by Gina Sprint on 12/7/20.
//

import SwiftUI

struct SecondContentView: View {
    var username: String
    @Binding var secondViewShowing: Bool
    
    // task: add a Button that when tapped sets secondViewShowing to false
    
    var body: some View {
        if username != "" {
            Text("Welcome, \(username)")
        }
        else {
            Text("Welcome, Anonymous")
        }
    }
}
