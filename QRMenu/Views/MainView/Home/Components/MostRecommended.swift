//
//  MostRecommended.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct MostRecommended: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Button(action: {
                
            }, label: {
                HStack{
                    Text("Most Recommended").font(.headline.bold())
                    Spacer()
                    Image(systemName: "chevron.right").bold()
                }.foregroundStyle(.black)
            })
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 16) {
                    ForEach(1...10, id: \.self) { _ in
                        MostRecommendedCards()
                    }
                }
            }.frame(height: 170)
        }.padding(.horizontal, 24)
    }
}

#Preview {
    MostRecommended()
}

struct MostRecommendedCards: View {
    var body: some View {
        ZStack(alignment: .topTrailing){
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.gray.opacity(0.5))
            VStack(alignment: .leading, spacing: 5){
                ZStack(alignment: .topTrailing){
                    Image("recommended").resizable()
                        .frame(width: 116, height: 132)
                        .aspectRatio(contentMode: .fit)
                    
                    Button(action: {
                        
                    }, label: {
                        ZStack{
                            Circle().fill(Color.gray.opacity(0.7))
                                .frame(width: 25, height: 25)
                            Image(systemName: "heart.fill").resizable()
                                .frame(width: 15, height: 15)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.red)
                        }
                    }).padding(.all, 8)
                }
                
                VStack(alignment: .leading, spacing: 5){
                    Text("Fasulye").font(.subheadline.bold())
                    StarRatingView(rating: .constant(2))
                }.padding(.horizontal, 8)
            }
        }.frame(height: 177)
    }
}


struct StarRatingView: View {
    @Binding var rating: Int // Kullanıcının seçtiği puan (1-5 arası)
    let maxRating: Int = 5 // Maksimum puan sayısı (5 yıldız)
    
    var body: some View {
        HStack {
            ForEach(1..<maxRating+1, id: \.self) { index in
                Image(systemName: self.image(for: index))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10, height: 10)
                    .foregroundColor(index <= self.rating ? .yellow : .gray)
                    .onTapGesture {
                        self.rating = index
                    }
            }
        }
    }
    
    // Yıldız simgesinin durumu (doldurulmuş veya boş)
    private func image(for index: Int) -> String {
        if index <= rating {
            return "star.fill" // Doldurulmuş yıldız
        } else {
            return "star" // Boş yıldız
        }
    }
}
