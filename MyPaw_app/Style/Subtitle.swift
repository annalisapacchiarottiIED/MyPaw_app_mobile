//
//  Subtitle.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 10/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct Subtitle: View {
    
    @State var subtitle: String
    
    var body: some View {
        HStack {
            Text(subtitle)
                .foregroundColor(.white)
                .opacity(0.8)
                .font(.system(size: 16))
            Spacer()
        }
    }
}

struct Subtitle_Previews: PreviewProvider {
    static var previews: some View {
        Subtitle(subtitle: "Sottotitolo")
    }
}
