//
//  MainView.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 10/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State var index = 0
    
    var body: some View {
        ZStack {
            Color.init("Background")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 0) {
                
                ViewManager(index: self.$index)
                Spacer()
                CustomTabBar(index: self.$index)
                
            }.edgesIgnoringSafeArea(.bottom)

        }.zIndex(0)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
