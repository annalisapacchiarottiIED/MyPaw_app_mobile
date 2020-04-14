//
//  HomeMarketView.swift
//  MyPaw_app
//
//  Created by Annalisa Pacchiarotti on 07/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI
import Alamofire

struct Login: Encodable {
    let email: String
    let password: String
}
struct Prod: Encodable {
    let id: String
}

struct HomeMarketView: View {
    
    @State public var search: String = ""
    let chunkedProductsList = productsList.chunked(into: 2)
    let login = Login(email: "lkeebler@example.com", password: "password")
    let prod = Prod(id: "1")
    
    
    var body: some View {
        ZStack(alignment: .top){
            Color.init("Background")
                .edgesIgnoringSafeArea(.all)
            VStack(){
                RoundedRectangle(cornerRadius: 55, style: .continuous)
                    .fill(Color("RedMarket"))
                    .frame(height: 520)
                    .edgesIgnoringSafeArea(.top)
                    .shadow(color: Color.black.opacity(0.16), radius: 6, x: 0, y: 3)
                   
                Spacer()
            }
            VStack(){
                VStack(){
                    Button(action: {
                        AF.request("http://127.0.0.1:8000/api/products/show",
                               method: .post,
                               parameters: self.prod,
                               encoder: JSONParameterEncoder.default).response { response in
                        debugPrint(response)
                        }

                    }) {
                        Text("Prodotto")

                    }
                    HStack(){
                    Title(title: "Market")
                    Spacer()
                    }.padding(.all)
        
                    TextField(("Search"), text: $search){
                    }   .padding(15)
                        .background(RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color("BrightRedMarket"))
                        .cornerRadius(25))
                        .shadow(color: Color.black.opacity(0.25), radius: 6, x: 0, y: 3)
                            

                    Text("Per chi stai cercando un prodotto?")
                        .foregroundColor(Color.white)
                        .padding()

                    HStack(){
                        
                        Image("default_img")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90.0, height: 90.0, alignment: .center)
                            .clipShape(Circle())                  .padding(.horizontal, 5)
                            .shadow(color: Color.black.opacity(0.16), radius: 6, x: 0, y: 3)
                        
                        Image("default_img")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90.0, height: 90.0, alignment: .center)
                            .clipShape(Circle())
                            .padding(.horizontal, 5)
                            .shadow(color: Color.black.opacity(0.16), radius: 6, x: 0, y: 3)
                        
                        Image("default_img")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90.0, height: 90.0, alignment: .center)
                            .clipShape(Circle())
                            .padding(.horizontal, 5)
                            .overlay(Circle()
                                .stroke(Color.orange, lineWidth: 4))
                            .shadow(color: Color.black.opacity(0.16), radius: 6, x: 0, y: 3)
                            
                    }.padding()
                    Text("I prodotti verranno filtrati in base alle esigenzie del tuo pet")
                        
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                ConfirmButton(text: "Cerca", colorBG: "YellowPrimary", colorShadow: "YellowShadow")
                    .frame(width: 102, height: 90.0, alignment: .center)
                    .shadow(color: Color.black.opacity(0.16), radius: 6, x: 0, y: 3)
                    
                }
                Spacer()
                VStack(){
                    Text("Novità")
                    .foregroundColor(Color("RedMarket"))
                    .bold()
                }
                
                ScrollView(showsIndicators: false) {
                    ForEach(0..<chunkedProductsList.count) { index in
                        
                        HStack {
                            
                            ForEach(self.chunkedProductsList[index]) { product in
                                
                                ProductListItem(name: product.name, description: product.description, price: product.price, img: product.img)
                            }
                        }
                    }
                }
            }.padding(.horizontal, 25)
        }
    }
}

struct HomeMarketView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMarketView()
    }
}


