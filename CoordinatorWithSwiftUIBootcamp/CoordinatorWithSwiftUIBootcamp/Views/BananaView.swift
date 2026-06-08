//
//  BananaView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct BananaView: View {
    @EnvironmentObject private var coordinator: Coordinator
    var body: some View {
        List {
            Button("Push Carrot") {
                
            }
            
            Button("Pop") {
                
            }
            
        }
        .navigationTitle("Banana")
    }
}


#Preview {
    BananaView()
}
