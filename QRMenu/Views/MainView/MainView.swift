//
//  MainView.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView(selection: .constant(1), content: {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            // İkinci ekran
            CartView()
                .tabItem {
                    Image(systemName: "suitcase.cart")
                    Text("Cart")
                }
        })
    }
}

#Preview {
    MainView()
}
