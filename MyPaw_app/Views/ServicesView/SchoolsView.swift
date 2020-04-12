//
//  SchoolsView.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 10/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct Service: Identifiable {
    let id: Int
    let name: String
    let address: String
    let img: String
    let description: String
}

struct SchoolsView: View {
    
    @State private var modalPresented: Bool = false
    
    @State var servicesList = [
        Service(id: 1, name: "Petsmart", address: "Via Trallalero, 30/C", img: "petsmart-logo", description: "Descrizione negozio molto mmolto bello consigliatissimo ciao ciao ciaone mattacchione prova prova sa sa"),
        Service(id: 2, name: "Animal House", address: "Via Trallalà, 5", img: "animalhouse", description: "Descrizioneeee di animal house milano"),
        Service(id: 3, name: "Service 3", address: "Via Tarallo, 8", img: "petsmart-logo", description: "Descrizione negozio a caso"),
        Service(id: 4, name: "Service 4", address: "Via Krumiro, 39/B", img: "animalhouse", description: "Descrizione ciao ciao")
    ]
    
//    @State var names = ["Scuola 1", "Scuola 2", "Scuola 3", "Scuola 4"]
//    @State var imgs = ["petsmart-logo", "animalhouse", "animalhouse", "petsmart-logo"]
    
    var body: some View {
        
        ZStack(alignment: .top) {
            Color.init("Background")
                .edgesIgnoringSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color("YellowPrimary"))
                .frame(height: 200)
                .edgesIgnoringSafeArea(.top)
            
            VStack(alignment: .leading) {
                Title(title: "Scuola")
                    .padding(.bottom, 10)
                Subtitle(subtitle: "Ecco le scuole convenzionate vicine a te")
                
                MapView()
                    .frame(height: 200)
                    .cornerRadius(17)
                    .padding(.top, 25)
                    .shadow(color: Color.gray.opacity(0.1), radius: 6, x: 0, y: 5)
                    .padding(.bottom, 25)
                
                ScrollView {
                    VStack (alignment: .leading) {
                        ForEach(servicesList, id: \.id) { service in
                            ServicesListItem(name: service.name, img: service.img)
                                .onTapGesture { self.modalPresented = true }
                        }
//                        ServicesListItem(name: "Petsmart", img: "petsmart-logo")
//                            .onTapGesture { self.modalPresented = true }
//                        ServicesListItem(name: "Animal House", img: "animalhouse")
//                            .onTapGesture { self.modalPresented = true }
                    }
                }
                
            }.padding(.horizontal, 25)
        }.partialSheet(presented: $modalPresented) {
            VStack(alignment: .leading) {
                Text("Pet smart")
                    .fontWeight(.semibold)
                    .font(.system(size: 24))
                    .padding(.bottom, 10)
                Text("Via Trallalero, 30/C")
                    .padding(.bottom, 10)
                Text("Descrizione negozio molto mmolto bello consigliatissimo ciao ciao ciaone mattacchione prova prova sa sa")
                    .foregroundColor(Color.gray.opacity(0.9))
                    .padding(.bottom, 20)
                HStack(spacing:30) {
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "phone.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 20)
                                .foregroundColor(Color.gray.opacity(0.9))
                                .padding(.leading, 20)
                                .padding(.vertical, 15)
                            Text("Telefono")
                                .foregroundColor(Color.gray.opacity(0.9))
                                .fontWeight(.semibold)
                                .padding(.leading, 10)
                            Spacer()
                        }.background(Color("UpBackground"))
                        .cornerRadius(25)
                            .shadow(color: Color.gray.opacity(0.1), radius: 6, x: 0, y: 5)
                    }
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "envelope.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 20)
                                .foregroundColor(Color.gray.opacity(0.9))
                                .padding(.leading, 20)
                                .padding(.vertical, 15)
                            Text("E-mail")
                                .foregroundColor(Color.gray.opacity(0.9))
                                .fontWeight(.semibold)
                                .padding(.leading, 10)
                            Spacer()
                        }.background(Color("UpBackground"))
                        .cornerRadius(25)
                            .shadow(color: Color.gray.opacity(0.1), radius: 6, x: 0, y: 5)
                    }
            
                }.padding(.bottom, 25)
                ConfirmButton(text: "Prenota", colorBG: "YellowPrimary", colorShadow: "YellowShadow")
                    .padding(.top, 60).padding(.bottom, -30)
            }.padding(.horizontal, 25).padding(.top)
        }
        
    }
}

struct SchoolsView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolsView()
    }
}
