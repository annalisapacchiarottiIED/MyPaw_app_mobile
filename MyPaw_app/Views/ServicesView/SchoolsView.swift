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
    
    @State var showDetail = false
    @State var viewState = CGSize.zero
    @State var name : String = ""
    @State var address : String = ""
    @State var img : String = ""
    @State var description : String = ""
    
    @State var servicesList = [
        Service(id: 1, name: "Petsmart", address: "Via Trallalero, 30/C", img: "petsmart-logo", description: "Descrizione negozio molto mmolto bello consigliatissimo ciao ciao ciaone mattacchione prova prova sa sa"),
        Service(id: 2, name: "Animal House", address: "Via Trallalà, 5", img: "animalhouse", description: "Descrizioneeee di animal house milano"),
        Service(id: 3, name: "Service 3", address: "Via Tarallo, 8", img: "petsmart-logo", description: "Descrizione negozio a caso"),
        Service(id: 4, name: "Service 4", address: "Via Krumiro, 39/B", img: "animalhouse", description: "Descrizione ciao ciao")
    ]
    
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
                
                ScrollView(showsIndicators: false) {
                    ForEach(servicesList, id: \.id) { service in
                        
                        ServicesListItem(name: service.name, img: service.img)
                            .onTapGesture {
                                self.name = service.name
                                self.address = service.address
                                self.description = service.description
                                withAnimation(.spring()){
                                    self.showDetail.toggle()
                                    if self.showDetail {
                                        self.viewState = .zero
                                    }
                                }
                        }
                    }
                }
                
            }.padding(.horizontal, 25)
            
            VStack {
                Spacer()
                ServiceDetail(show: self.$showDetail, name: self.$name, address: self.$address, description: self.$description)
                    
                    .offset(y: viewState.height)
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                self.viewState = value.translation
                        }
                        .onEnded { value in
                            if self.viewState.height > 100 {
                                withAnimation{
                                    self.viewState = CGSize(width: 0, height: 800)
                                    self.showDetail = false
                                }
                            } else {
                                
                                self.viewState = .zero
                            }
                        }
                )
                
            }.offset(y: self.showDetail ? .zero+20 : UIScreen.main.bounds.height)
                .background(self.showDetail ? Color.black.opacity(0.2) : Color.black.opacity(0)).edgesIgnoringSafeArea(.all)
                
                .onTapGesture {
                    withAnimation{
                        self.showDetail = false
                    }
            }
            
        }
        
    }
    
}


struct SchoolsView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolsView()
    }
}

struct ServiceDetail : View {
    
    @Binding var show : Bool
    @Binding var name : String
    @Binding var address : String
    @Binding var description : String
    
    var body : some View{
        
        VStack(alignment: .leading) {
            HStack (alignment: .center) {
                Spacer()
                Capsule()
                    .fill(Color.gray.opacity(0.5))
                    .frame(width: 50, height: 5)
                Spacer()
            }.padding(.top, -10)
            Text(name)
                .fontWeight(.semibold)
                .font(.system(size: 16))
                .padding(.bottom, 10)
            Text(address)
                .font(.system(size: 14))
                .padding(.bottom, 10)
            Text(description)
                .font(.system(size: 14))
                .foregroundColor(Color.gray.opacity(0.9))
                .padding(.bottom, 20)
            HStack(spacing:30) {
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "phone.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 15)
                            .foregroundColor(Color.gray.opacity(0.9))
                            .padding(.leading, 20)
                            .padding(.vertical, 15)
                        Text("Telefono")
                            .font(.system(size: 14))
                            .foregroundColor(Color.gray.opacity(0.9))
                            .fontWeight(.semibold)
                            .padding(.leading, 10)
                        Spacer()
                    }.background(Color("UpUpBackground"))
                        .cornerRadius(25)
                        .shadow(color: Color.gray.opacity(0.1), radius: 6, x: 0, y: 5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color("Background"), lineWidth: 0.3)
                    )
                }
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "envelope.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 15)
                            .foregroundColor(Color.gray.opacity(0.9))
                            .padding(.leading, 20)
                            .padding(.vertical, 15)
                        Text("E-mail")
                            .font(.system(size: 14))
                            .foregroundColor(Color.gray.opacity(0.9))
                            .fontWeight(.semibold)
                            .padding(.leading, 10)
                        Spacer()
                    }.background(Color("UpUpBackground"))
                        .cornerRadius(25)
                        .shadow(color: Color.gray.opacity(0.1), radius: 6, x: 0, y: 5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color("Background"), lineWidth: 0.3)
                    )
                }
                
            }.padding(.bottom, 25)
            ConfirmButton(text: "Prenota", colorBG: "YellowPrimary", colorShadow: "YellowShadow")
                .padding(.top, 60)
                .padding(.bottom, 50)
        }
        .padding(.horizontal, 25)
        .padding(.top, 30)
        .background(Color("UpBackground"))
        .cornerRadius(17)
    }
}
