//
//  DogDetailView.swift
//  SwiftUIFunTemp2
//
//  Created by Gina Sprint on 11/29/20.
//

import SwiftUI

struct DogDetailView: View {
    var dog: Dog
    
    var body: some View {
        VStack {
            Text("Name: \(dog.name)")
            Text("Breed: \(dog.breed)")
            Spacer()
            Image(dog.imageName).resizable().aspectRatio(contentMode: .fit)
            Spacer()
        }
        .padding()
    }
}

struct DogDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DogDetailView(dog: Dog(name: "TempName", breed: "TempBreed"))
    }
}
