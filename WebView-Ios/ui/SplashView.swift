//
//  SplashView.swift
//  WebView-Ios
//
//  Created by visionet on 07/07/23.
//

import SwiftUI

struct SplashView: View {
    @State var isActive  : Bool = false
    
    var body: some View {
        ZStack{
            if self.isActive{
                ContentView()
            }else{
                Rectangle().background(Color.black)
                Image("splashimage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                withAnimation{
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
