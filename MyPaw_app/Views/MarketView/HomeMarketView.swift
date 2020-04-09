//
//  HomeMarketView.swift
//  MyPaw_app
//
//  Created by Annalisa Pacchiarotti on 07/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct HomeMarketView: View {
    var body: some View {
        ZStack(){
            VStack(){
                RoundedRectangle(cornerRadius: 35, style: .continuous)
                    .fill(Color("RedMarket"))
                    .frame(height: 600)
                    .edgesIgnoringSafeArea(.top)
                   
                Spacer()
                
            }
        }
    }
}

struct HomeMarketView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMarketView()
    }
}
