//
//  CustomTabBar.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 10/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI


struct CustomTabBar: View {
    
    @Binding var index : Int
    
    var body: some View {
        
        HStack(alignment: .bottom) {

            Image(systemName: self.index == 0 ? "house.fill" : "house")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 20)
                .foregroundColor(Color("YellowPrimary"))
                .padding(.horizontal, 30)
                .onTapGesture {
                    self.index = 0
                }
            
            Image(systemName: self.index == 1 ? "cart.fill" : "cart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 20)
                .foregroundColor(Color("YellowPrimary"))
                .padding(.horizontal, 30)
                .onTapGesture {
                    self.index = 1
                }
            
            Image(systemName: self.index == 2 ? "checkmark.seal.fill" : "checkmark.seal")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 20)
                .foregroundColor(Color("YellowPrimary"))
                .padding(.horizontal, 30)
                .onTapGesture {
                    self.index = 2
                }
            
            Image(systemName: self.index == 3 ? "person.fill" : "person")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 20)
                .foregroundColor(Color("YellowPrimary"))
                .padding(.horizontal, 30)
                .onTapGesture {
                    self.index = 3
                }
            
                
            //            Spacer()
        }.frame(minWidth: 0, maxWidth: .infinity).padding(.top).padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(
                Rectangle().foregroundColor(self.index == 3 ? Color("Background") : Color("Background"))
        )
        
    }
}


struct ViewManager: View {
    
    @Binding var index : Int

    
    var body: some View {
            VStack(spacing: 0) {
                
                if self.index == 0 {
                    SchoolsView()
                }
                
                else if self.index == 1 {
                    HomeMarketView()
                }
                
                else if self.index == 2 {
                    Text("cc")
                }
                
                else if self.index == 3 {
                    Text("ccd")
                }
            }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(index: .constant(0))
    }
}
