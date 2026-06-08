//
//  OliveView.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import SwiftUI

struct OliveView: View {
    @EnvironmentObject private var coordinator: Coordinator
    var body: some View {
        List {
            Button("Dismiss") {
                coordinator.dismissFullScreenCover()
            }
        }
        .navigationTitle("Olive")
    }
}


#Preview {
    OliveView()
}
