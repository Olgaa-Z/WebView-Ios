//
//  LoginScreenView.swift
//  WebView-Ios
//
//  Created by visionet on 10/07/23.
//

import SwiftUI

struct LoginScreenView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        
        VStack{
            Spacer()
            VStack{
                TextField("Username", text : $username)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.top, 20)
                
                Divider()
                
                SecureField("Password", text : $password)
                    .padding(.top, 20)
                
                Divider()
                
            }
            
            Spacer()
            
            Button(
                "Sign In", action: greeting
            )
            
            Button(
                action: greeting,
                label: {
                            Text("Login")
                                .font(.system(size: 24, weight: .bold, design: .default))
                                .frame(maxWidth: .infinity, maxHeight: 60)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
            )
            
        }
        .padding(30)
    }
    
    func greeting() {

           print("Hello, World!")
       }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
