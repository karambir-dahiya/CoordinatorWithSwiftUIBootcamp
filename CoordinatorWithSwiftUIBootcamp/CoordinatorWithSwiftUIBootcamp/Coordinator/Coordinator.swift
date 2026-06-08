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

struct AppleModel: Identifiable, Hashable {
    let id: UUID = UUID()
    let variety: String
    let isSweet: Bool
}

struct BananaModel: Identifiable, Hashable {
    let id: UUID = UUID()
    let ripenessIndex: Int
}

struct CarrotModel: Identifiable, Hashable {
    let id: Int
    let lengthInCm: Double
}

enum Page: Identifiable, Hashable {
    case apple(AppleModel)
    case banana(BananaModel)
    case carrot(CarrotModel)
    

    var id: String {
        switch self {
        case .apple(let model):
            return model.id.uuidString
        case .banana(let model):
            return model.id.uuidString
        case .carrot(let model):
            return String(model.id)
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
        case .apple(let model):
            AppleView(fruit: model)
        case .banana(let model):
            BananaView(fruit: model)
        case .carrot(let model):
            CarrotView(fruit: model)
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

