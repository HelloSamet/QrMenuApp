//
//  Categories.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct Categories: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Button(action: {
                
            }, label: {
                HStack{
                    Text("Categories").font(.headline.bold())
                    Spacer()
                    Image(systemName: "chevron.right").bold()
                }
            }).foregroundStyle(.black)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(1...10, id: \.self) { _ in
                        CategoriesCards()
                    }
                }
            }
            .frame(height: 52)

        }.padding(.horizontal, 24)
    }
}

#Preview {
    Categories()
}

struct CategoriesCards: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack{
                Image("hamburger")
            }
        })
    }
}
