//
//  Header.swift
//  QRMenu
//
//  Created by Abdulsamet Göçmen on 9.12.2024.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack(spacing: 10){
            Image(systemName: "house.fill").resizable()
                .frame(width: 25, height:  25)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.red)
            
            VStack(alignment: .leading, spacing: 10){
                Button(action: {}) {
                    Text("Home")
                        .font(.headline)
                        .foregroundColor(.black)
                    Image(systemName: "chevron.down").resizable()
                        .frame(width: 15, height: 10)
                        .aspectRatio(contentMode: .fit)
                        .font(.title)
                        .foregroundColor(.black)
                }
                
                Text("Test mah. genc cad. no:27")
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
            Spacer()
            Ellipse()
                .strokeBorder(Color.black, lineWidth: 1)
                .background(Color.clear)
                .overlay(
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                )
                .frame(width: 60, height: 60)
                .clipShape(Ellipse())


                
            
        }.padding(.horizontal, 24)
    }
}

#Preview {
    Header()
}
