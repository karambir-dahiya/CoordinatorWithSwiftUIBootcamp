//
//  LemonView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct LemonView: View {
    @EnvironmentObject private var coordinator: Coordinator
    let fruit: Fruit
    
    var body: some View {
        List {
            Text("Name : \(fruit.name)")
            Text("Price : \(fruit.price)")
            Button("Dismiss") {
                coordinator.dismissSheet()
            }
            
        }
        .navigationTitle("Lemon")
    }
}

#Preview {
    LemonView(fruit: Fruit(id: UUID(), name: "Apple", price: 15))
}
