//
//  CarrotView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct CarrotView: View {
    @EnvironmentObject private var coordinator: Coordinator
    var body: some View {
        List {
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
    CarrotView()
}
