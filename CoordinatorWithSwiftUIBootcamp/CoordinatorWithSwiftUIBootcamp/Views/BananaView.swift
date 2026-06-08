//
//  BananaView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct BananaView: View {
    @EnvironmentObject private var coordinator: Coordinator
    let fruit: Fruit
    
    var body: some View {
        List {
            Text("Name : \(fruit.name)")
            Text("Price : \(fruit.price)")
            Button("Push Carrot") {
                coordinator.push(.carrot(Fruit(id: UUID(), name: "Carrot", price: 15)))
            }
            
            Button("Pop") {
                coordinator.pop()
            }
            
        }
        .navigationTitle("Banana")
    }
}


#Preview {
    BananaView(fruit: Fruit(id: UUID(), name: "Carrot", price: 15))
}
