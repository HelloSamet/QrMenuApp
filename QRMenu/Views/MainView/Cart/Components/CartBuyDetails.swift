//
//  CartBuyDetails.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct CartBuyDetails: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            DashedDivider()
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Text("Subtotal")
                    Spacer()
                    Image(systemName: "turkishlirasign").font(.subheadline.bold())
                    Text("780").font(.subheadline.bold())
                }
                HStack{
                    Text("Shipping fees")
                    Spacer()
                    Image(systemName: "turkishlirasign").font(.subheadline.bold())
                    Text("50").font(.subheadline.bold())
                }
                HStack{
                    Text("Discount")
                    Spacer()
                    Text("20").font(.subheadline.bold())
                    Image(systemName: "percent").font(.subheadline.bold())
                }
            }.padding(.horizontal, 24)
            DashedDivider()
            HStack{
                Text("Total")
                Spacer()
                Image(systemName: "turkishlirasign").font(.subheadline.bold())
                Text("664").font(.subheadline.bold())
            }.padding(.horizontal, 24)
        }
    }
}

#Preview {
    CartBuyDetails()
}
