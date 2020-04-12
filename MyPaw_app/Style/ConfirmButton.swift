//
//  ConfirmButton.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 10/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct ConfirmButton: View {
    
    @State var text: String
    @State var colorBG: String
    @State var colorShadow: String
    
    var body: some View {
        VStack(alignment: .center){
            Button(action: {
                
            }) {
                Text(text)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .frame(minWidth: 0, maxWidth: .infinity)
                    //                        .padding(.horizontal, 50)
                    .frame(height: 50)
            }.background(Color(colorBG))
                .cornerRadius(25)
                .shadow(color: Color(colorShadow), radius: 6, x: 0, y: 5)
        }
    }
}

struct ConfirmButton_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmButton(text: "Conferma", colorBG: "YellowPrimary", colorShadow: "YellowShadow")
    }
}
