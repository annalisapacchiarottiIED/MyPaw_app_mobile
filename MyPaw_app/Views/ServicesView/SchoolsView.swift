//
//  SchoolsView.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 10/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct SchoolsView: View {
    var body: some View {
        
        ZStack(alignment: .top){
            Color.init("Background")
                .edgesIgnoringSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color("YellowPrimary"))
                .frame(height: 200)
                .edgesIgnoringSafeArea(.top)
            
            VStack(alignment: .leading){
                Title(title: "Scuola")
                    .padding(.bottom, 10)
                Subtitle(subtitle: "Ecco le scuole convenzionate vicine a te")
                
                MapView()
                    .frame(height: 200)
                    .cornerRadius(17)
                    .padding(.top, 25)
                    .shadow(color: Color.gray.opacity(0.1), radius: 6, x: 0, y: 5)
                    .padding(.bottom, 25)
                
                List(0..<4) { _ in
                    Text("Ciaone")
                }.padding(.bottom, 30)
                
                Spacer()
                
                ConfirmButton(text: "Prenota", colorBG: "YellowPrimary", colorShadow: "YellowShadow")
                
            }.padding(.horizontal, 25)
        }
        
    }
}

struct SchoolsView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolsView()
    }
}
