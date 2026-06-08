//
//  AppleView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct AppleView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Push Banana") {
                coordinator.push(.banana)
            }
            
            Button("Present Lemon") {
                coordinator.present(.lemon)
            }
            
            Button("Present Olive") {
                coordinator.presentfullScreenCover(.olive)
            }
        }
        .navigationTitle("apple.fill")
    }
}

#Preview {
    AppleView()
}
