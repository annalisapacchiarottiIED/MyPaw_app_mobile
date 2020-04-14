//
//  ListaProvaView.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 11/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct ListaProvaView: View {
    
    @State private var names = ["Scuola 1", "Scuola 2", "Scuola 3", "Scuola 4"]
    
    var body: some View {
        
        ZStack {
            Color.init("Background")
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack (alignment: .leading) {
                    ForEach(self.names, id: \.self) { name in
                        ListItemView(name: name)
                    }
                }
            }
            .padding(.horizontal, 25)
        }

    }
}

struct ListaProvaView_Previews: PreviewProvider {
    static var previews: some View {
        ListaProvaView()
    }
}

struct ListItemView: View {
    
    let name: String
    
    var body: some View {
            
            HStack {
                Image("petsmart-logo")
                    .resizable().aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 8)).padding(.leading, -15)
                
                VStack {
                    Text(name)
                        .fontWeight(.semibold)
                    Text("Inidrizzo")
                }.padding(.leading, 10)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                .foregroundColor(Color("YellowPrimary"))
                
            }.frame(height: 100).padding(.horizontal, 15)
                .background(RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(Color("UpBackground") )
                        .shadow(color: Color.gray.opacity(0.1), radius: 6, x: 0, y: 5)
                )
        
    }
}
