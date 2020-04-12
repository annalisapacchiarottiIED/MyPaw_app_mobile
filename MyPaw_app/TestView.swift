//
//  TestView.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 11/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct TestView: View {
    
    @State private var modalPresented: Bool = true
    @State private var text: String = "some text"
    
    var body: some View {
        NavigationView {
            VStack {
                
                HStack {
                    Image("petsmart-logo")
                        .resizable().aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 8)).padding(.leading, -15)
                    
                    VStack {
                        Text("name")
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
                    .onTapGesture {
                        self.modalPresented = true
                }
                
                Button(action: {
                    self.modalPresented = true
                }) {
                    Text("text")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 18))
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 40)
                }.background(Color("YellowPrimary"))
                    .cornerRadius(25)
                    .shadow(color: Color("YellowShadow"), radius: 6, x: 0, y: 5)
            }
            .padding()
        }
        .partialSheet(presented: $modalPresented) {
            VStack(alignment: .leading) {
                Text("Titolo")
                    .fontWeight(.semibold)
                Text("indirizzo")
                
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
