//
//  OliveView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct OliveView: View {
    @EnvironmentObject private var coordinator: Coordinator
    let fruit: Fruit
    
    var body: some View {
        List {
            Text("Name : \(fruit.name)")
            Text("Price : \(fruit.price)")
            Button("Dismiss") {
                coordinator.dismissFullScreenCover()
            }
        }
        .navigationTitle("Olive")
    }
}


#Preview {
    OliveView(fruit: Fruit(id: UUID(), name: "Apple", price: 15))
}
