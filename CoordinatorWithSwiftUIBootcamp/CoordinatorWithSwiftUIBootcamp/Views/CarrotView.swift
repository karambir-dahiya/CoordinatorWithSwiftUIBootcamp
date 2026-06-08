//
//  CarrotView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct CarrotView: View {
    @EnvironmentObject private var coordinator: Coordinator
    let fruit: Fruit
    
    var body: some View {
        List {
            Text("Name : \(fruit.name)")
            Text("Price : \(fruit.price)")
            Button("Pop") {
                coordinator.pop()
            }
            
            Button("Pop to root view") {
                coordinator.popToRoot()
            }
            
        }
        .navigationTitle("Carrot")
    }
}

#Preview {
    CarrotView(fruit: Fruit(id: UUID(), name: "Apple", price: 15))
}
