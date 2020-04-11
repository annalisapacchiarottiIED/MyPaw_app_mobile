//
//  Title.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 10/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct Title: View {
    @State var title: String
    
    var body: some View {
       HStack {
            Text(title)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size: 24))
            Spacer()
        }
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(title: "Titolo")
    }
}
