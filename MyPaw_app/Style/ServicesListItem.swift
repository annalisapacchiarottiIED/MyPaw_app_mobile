//
//  ServicesListItem.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 12/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct ServicesListItem: View {
    
    @State var name: String
    @State var img: String
    
    var body: some View {
        HStack {
            Image(img)
                .resizable().aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 8)).padding(.leading, -15)
            
            Text(name)
                .fontWeight(.semibold)
                .padding(.leading, 10)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(Color("YellowPrimary"))
            
        }.frame(height: 80).padding(.horizontal, 15)
            .background(RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color("UpBackground") )
                .shadow(color: Color.gray.opacity(0.1), radius: 6, x: 0, y: 5)
        )
    }
}

struct ServicesListItem_Previews: PreviewProvider {
    static var previews: some View {
        ServicesListItem(name: "Nome", img: "petsmart-logo")
    }
}
