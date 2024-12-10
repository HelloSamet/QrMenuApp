//
//  CartBuyButton.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct CartBuyButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.red.opacity(0.7))
                Text("Continue").font(.title.bold()).foregroundColor(.white)
            }.frame(height: 61)
        }).padding(.horizontal, 24)
    }
}

#Preview {
    CartBuyButton()
}
