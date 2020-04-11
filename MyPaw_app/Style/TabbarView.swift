//
//  TabView.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 11/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            
            YellowView()
            .tabItem {
                Image(systemName: "house.fill")
            }

           BlueView()
             .tabItem {
                Image(systemName: "cart.fill")
              }
            
            RedView()
            .tabItem {
               Image(systemName: "checkmark.seal.fill")
             }
            
            GreenView()
                .tabItem {
                  Image(systemName: "person.fill")
                }
        }.shadow(color: Color.gray.opacity(0.1), radius: 6, x: 0, y: 5)
        
    }
}

struct YellowView: View {
    var body: some View {
        Color.yellow
    }
}

struct BlueView: View {
    var body: some View {
        Color.blue
    }
}

struct RedView: View {
    var body: some View {
        Color.red
    }
}

struct GreenView: View {
    var body: some View {
        Color.green
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
