//
//  BananaView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct BananaView: View {
    @EnvironmentObject private var coordinator: Coordinator
    let fruit: BananaModel
    
    var body: some View {
        List {
            Text("Name : \(fruit.id)")
            Text("Price : \(fruit.ripenessIndex)")
            Button("Push Carrot") {
                coordinator.push(.carrot(CarrotModel(id: 56476567, lengthInCm: 13)))
            }
            
            Button("Pop") {
                coordinator.pop()
            }
            
        }
        .navigationTitle("Banana")
    }
}


#Preview {
    BananaView(fruit: BananaModel(ripenessIndex: 4))
}
