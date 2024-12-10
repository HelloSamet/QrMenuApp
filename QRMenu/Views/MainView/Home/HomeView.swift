//
//  HomeView.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 30){
                Header()
                Search()
                Campaigns()
                Categories()
                MostRecommended()
            }
        }.background(Color.red.opacity(0.2))
    }
}

#Preview {
    HomeView()
}
