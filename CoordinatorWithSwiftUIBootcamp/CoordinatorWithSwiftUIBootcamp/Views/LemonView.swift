//
//  LemonView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct LemonView: View {
    @EnvironmentObject private var coordinator: Coordinator
    var body: some View {
        List {
            Button("Dismiss") {
                
            }
            
        }
        .navigationTitle("Lemon")
    }
}

#Preview {
    LemonView()
}
