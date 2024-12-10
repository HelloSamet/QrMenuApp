//
//  PromoCodeView.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct PromoCodeView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.gray.opacity(0.5))
            
            HStack{
                TextField("Promo Code", text: .constant(""))
                Spacer()
                Button(action: {
                    
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.green)
                        Text("Apply").font(.subheadline.bold()).foregroundColor(.white)
                    }.frame(width: 71, height: 39)
                })
            }.padding(.horizontal, 20)
        }.frame(height: 55)
            .padding(.horizontal, 24)
    }
}

#Preview {
    PromoCodeView()
}
