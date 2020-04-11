//
//  HomeMarketView.swift
//  MyPaw_app
//
//  Created by Annalisa Pacchiarotti on 07/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI


struct HomeMarketView: View {
    @State public var search: String = ""
    
    var body: some View {
        ZStack(alignment: .top){
            Color.init("Background")
                .edgesIgnoringSafeArea(.all)
            VStack(){
                RoundedRectangle(cornerRadius: 35, style: .continuous)
                    .fill(Color("RedMarket"))
                    .frame(height: 600)
                    .edgesIgnoringSafeArea(.top)
                   
                Spacer()
            }
            VStack(){
                VStack(){
                    HStack(){
       
                        Title(title: "Market")
                        Spacer()
                    }.padding(.all)
        
                    TextField(("Enter your name"), text: $search)
                        
                        .padding(15)
                        .background(RoundedRectangle(cornerRadius: 25)
                            .foregroundColor(Color("BrightRedMarket"))
                        .cornerRadius(25))
                        .shadow(color: Color.black.opacity(0.16), radius: 6, x: 0, y: 3)
                        
                    }
                Spacer()
                
            }.padding(.horizontal, 25)
        }
    }
}

struct HomeMarketView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMarketView()
    }
}

