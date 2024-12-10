//
//  CartListView.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct CartListView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading, spacing: 15){
                ForEach(1...10, id: \.self) { index in
                    if index != 1 {
                        DashedDivider()
                    }
                    CartListItem()
                }
            }
        }
    }
}

struct DashedDivider: View {
    var body: some View {
        Divider()
            .frame(height: 1)
            .overlay(
                Rectangle()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [10, 4])) // Dash uzunlukları ve boşluk
                    .foregroundColor(.orange)
            )
            .padding(.horizontal, 24)
    }
}

#Preview {
    CartListView()
}

struct CartListItem: View {
    var body: some View {
        HStack(spacing: 20){
            Image("hamburger").resizable()
                .frame(width: 70, height: 70)
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading, spacing: 10){
                Text("Hamburger").font(.title2.bold())
                HStack(spacing: 10){
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "minus.circle.fill").resizable()
                            .frame(width: 15, height: 15)
                            .aspectRatio(contentMode: .fit)
                    })
                    HStack{
                        Text("1").padding(EdgeInsets(top: 2, leading: 8, bottom: 2, trailing: 8))
                    }.background(Color.yellow.cornerRadius(8))
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus.circle.fill").resizable()
                            .frame(width: 15, height: 15)
                            .aspectRatio(contentMode: .fit)
                    })
                    
                    
                    Spacer()
                    Image(systemName: "turkishlirasign").font(.title3.bold())
                    Text("319").font(.title3.bold())
                }
            }
        }.padding(.horizontal, 24)
    }
}
