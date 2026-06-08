//
//  AppleView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct AppleView: View {
    @EnvironmentObject private var coordinator: Coordinator
    let fruit: AppleModel
    
    var body: some View {
        List {
            Text("Name : \(fruit.variety)")
            Text("Price : \(fruit.isSweet)")
            Button("Push Banana") {
                coordinator.push(.banana(BananaModel(ripenessIndex: 5)))
            }
            
            Button("Present Lemon") {
                coordinator.present(.lemon(Fruit(id: UUID(), name: "Lemon", price: 15)))
            }
            
            Button("Present Olive") {
                coordinator.presentfullScreenCover(.olive(Fruit(id: UUID(), name: "Olive", price: 15)))
            }
        }
        .navigationTitle("apple.fill")
    }
}

#Preview {
    AppleView(fruit: AppleModel(variety: "Kashmiri apples", isSweet: true))
}
