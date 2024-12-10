//
//  CartView.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        VStack{
            CartListView()
            PromoCodeView().padding(.top, 50)
                .padding(.bottom, 45)
            CartBuyDetails()
            CartBuyButton().padding(.top, 72)
                .padding(.bottom, 18)
        }.background(Color.red.opacity(0.2))
    }
}

#Preview {
    CartView()
}
