//
//  DogListView.swift
//  SwiftUIFunTemp2
//
//  Created by Gina Sprint on 11/29/20.
//

import SwiftUI

struct DogListView: View {
    let dogs = [Dog(name: "Lassie", breed: "Collie"), Dog(name: "Airbud", breed: "Retriever"), Dog(name: "Spike", breed: "Bulldog")]
    
    var body: some View {
        NavigationView {
            List(dogs) { dog in
                NavigationLink(destination: DogDetailView(dog: dog)) {
                    HStack {
                        Text(dog.name)
                        Spacer()
                        Text(dog.breed)
                        Spacer()
                        Image("dog").resizable().aspectRatio(contentMode: .fit).frame(width: 75, height: 75, alignment: .center)
                    }
                }
                .navigationBarItems(leading: Button(action: {}, label: {
                    Text("Edit")
                }), trailing: Button(action: {}, label: {
                    Image(systemName: "plus")
                }))
                .navigationBarTitle("", displayMode: .inline)
            }
        }
    }
}

struct DogListView_Previews: PreviewProvider {
    static var previews: some View {
        DogListView()
    }
}
