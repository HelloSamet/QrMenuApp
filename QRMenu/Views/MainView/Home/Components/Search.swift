//
//  Search.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct Search: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.2))
                .shadow(radius: 1)
            HStack{
                Image(systemName: "magnifyingglass")
                TextField("Search", text: .constant(""))
                
            }.padding(.horizontal, 12)
        }.padding(.horizontal, 24)
            .frame(height: 52)
        
    }
}

#Preview {
    Search()
}
