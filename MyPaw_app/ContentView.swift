//
//  ContentView.swift
//  MyPaw_app
//
//  Created by Annalisa Pacchiarotti on 22/03/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//


import SwiftUI
import Alamofire

 struct Login: Encodable {
    let email: String
    let password: String
}

struct ContentView: View {

    let login = Login(email: "annalisa.pacchiarotti@gmail.com", password: "lalalala")

    var body: some View {

        Button(action: {
            AF.request("http://127.0.0.1:8000/api/login",
                   method: .post,
                   parameters: self.login,
                   encoder: JSONParameterEncoder.default).response { response in
            debugPrint(response)
            }

        }) {
            Text("Login")

        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

