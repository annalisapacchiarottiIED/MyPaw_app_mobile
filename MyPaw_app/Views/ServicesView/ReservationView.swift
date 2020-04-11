//
//  ReservationView.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 11/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct ReservationView: View {
    
    @State var reservationDate = Date()
    
    var body: some View {
        ZStack(alignment: .top){
            Color.init("Background")
                .edgesIgnoringSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color("YellowPrimary"))
                .frame(height: 200)
                .edgesIgnoringSafeArea(.top)
            
            VStack(alignment: .leading){
                Title(title: "Prenotazione")
                    .padding(.bottom, 10)
                Subtitle(subtitle: "Scegli la data")
                
                RoundedRectangle(cornerRadius: 17, style: .continuous)
                    .fill(Color.white)
                    .frame(height: 250)
                    .padding(.top, 25)
                    .shadow(color: Color.gray.opacity(0.1), radius: 6, x: 0, y: 5)
                    .padding(.bottom, 25)
                
                Subtitle(subtitle: "Scegli l'orario")
                
//                RoundedRectangle(cornerRadius: 17, style: .continuous)
//                    .fill(Color.white)
//                    .frame(height: 150)
//                    .padding(.top, 25)
//                    .shadow(color: Color.gray.opacity(0.1), radius: 6, x: 0, y: 5)
//                    .padding(.bottom, 25)
                
                DatePicker("Scegli l'orario", selection: $reservationDate, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                Spacer()
                
                ConfirmButton(text: "Conferma", colorBG: "YellowPrimary", colorShadow: "YellowShadow")
                
            }.padding(.horizontal, 25)
        }
    }
}

struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}
