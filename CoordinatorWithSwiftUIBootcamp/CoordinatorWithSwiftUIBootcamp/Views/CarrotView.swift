//
//  CarrotView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct CarrotView: View {
    @EnvironmentObject private var coordinator: Coordinator
    let fruit: CarrotModel
    
    var body: some View {
        List {
            Text("Name : \(fruit.id)")
            Text("Price : \(fruit.lengthInCm)")
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
    CarrotView(fruit: CarrotModel(id: 76866, lengthInCm: 12))
}
