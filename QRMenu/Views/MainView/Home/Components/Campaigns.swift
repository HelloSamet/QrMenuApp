//
//  Campaigns.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct Campaigns: View {
    var body: some View {
        ZStack{
            Image("campaigns")
            Image("campaignss")
            
            VStack(alignment: .leading, spacing: 10){
                Text("Get up to")
                Text("%50 OFF").font(.title.bold())
                Text("on your dining bills with Grubjet")
                
                Button(action: {
                    
                }, label: {
                    HStack{
                        Text("Check out all the restaurants").font(.footnote)
                            .padding(EdgeInsets(top: 4, leading: 13, bottom: 4, trailing: 13))
                    }.background(Color.red.cornerRadius(8))
                        
                })
            }.foregroundStyle(.white)
        }.frame(height: 187)
    }
}

#Preview {
    Campaigns()
}
