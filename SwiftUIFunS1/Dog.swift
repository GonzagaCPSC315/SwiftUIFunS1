//
//  Dog.swift
//  SwiftUIFunTemp2
//
//  Created by Gina Sprint on 11/29/20.
//

import Foundation

struct Dog: Identifiable {
    var id: UUID
    var name: String
    var breed: String
    var imageName: String
    
    init(name: String, breed: String) {
        self.id = UUID()
        self.name = name
        self.breed = breed
        self.imageName = "dog"
    }
}
