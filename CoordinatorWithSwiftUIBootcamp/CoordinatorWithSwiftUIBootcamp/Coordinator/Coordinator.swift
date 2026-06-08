//
//  Coordinator.swift
//  CoordinatorWithSwiftUIBootcamp
//
//  Created by Siyaa Dahiya on 08/06/26.
//

import Combine
import SwiftUI

struct Fruit: Hashable {
    let id: UUID
    let name: String
    let price: Int
}

enum Page: Hashable, Identifiable {
    case apple(Fruit)
    case banana(Fruit)
    case carrot(Fruit)
    
    var id: String {
        switch self {
        case .apple(let fruit),
                .banana(let fruit),
                .carrot(let fruit):
            return fruit.id.uuidString
        }
    }
}

enum Sheet: Identifiable {
    case lemon(Fruit)
    
    var id: String {
        switch self {
        case .lemon(let fruit):
            return fruit.id.uuidString
        }
    }
}

enum FullScreenCover: Identifiable {
    case olive(Fruit)
    
    var id: String {
        switch self {
        case .olive(let fruit):
            return fruit.id.uuidString
        }
    }
}


final class Coordinator: ObservableObject {
    
    @Published var path: NavigationPath = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(_ sheet: Sheet) {
        self.sheet = sheet
    }
    
    func presentfullScreenCover(_ fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
            
        case .apple(let fruit):
            AppleView(fruit: fruit)
            
        case .banana(let fruit):
            BananaView(fruit: fruit)
            
        case .carrot(let fruit):
            CarrotView(fruit: fruit)
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
            
        case .lemon(let fruit):
            NavigationStack {
                LemonView(fruit: fruit)
            }
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
            
        case .olive(let fruit):
            NavigationStack {
                OliveView(fruit: fruit)
            }
        }
    }
    
    
}

