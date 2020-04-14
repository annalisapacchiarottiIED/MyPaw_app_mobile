//
//  ProductListItem.swift
//  MyPaw_app
//
//  Created by Annalisa Pacchiarotti on 14/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//
import SwiftUI

struct ProductListItem: View {
    
    @State var name: String
    @State var description: String
    @State var price: Double
    @State var img: String
    
    
    
    var body: some View {
        ZStack{
            Image(img)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 190, height: 230)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            VStack{
                Spacer()
                HStack(){
                    VStack(){
                        
                        Text(name)
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                        Text(description)
                    }
                    Spacer()
                    Text(String(format: "%.2f",price))
                    .bold()
                    .foregroundColor(Color("RedMarket"))
                    }.padding()
                    
                .frame(width: 195, height: 60)
                    .background(RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(Color("Background")))
                
                
            }.frame(width: 195, height: 230)
            .shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: -5)
            
            
        }.shadow(color: Color.black.opacity(0.25), radius: 6, x: 0, y: 3)
    }
}

struct ServicesListItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductListItem(name: "Nome", description: "voilà", price:3.5, img: "default_img")
    }
}
