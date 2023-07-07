//
//  ContentView.swift
//  WebView-Ios
//
//  Created by visionet on 04/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Link("Website", destination: URL(string: "https://www.visionet.co.id/id/beranda/")!)
                Link("Instagram", destination: URL(string: "https://www.instagram.com/visionet.id/")!)
                Link(destination: URL(string: "https://sarunw.com")!) {
                            Image("share")
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50, alignment: .bottom)
                                .font(.largeTitle)
                                .foregroundColor(.pink)
                        }
            }
            .foregroundColor(.black)
            .navigationTitle("About")
        }
        
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
