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
                HStack{
                    Image("webviewimage")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25, alignment: .bottom)
                        .font(.largeTitle)
                        .foregroundColor(.pink)
                    Link("WebView", destination: URL(string: "https://www.visionet.co.id/id/beranda/")!)
                }
                
                Link("Instagram", destination: URL(string: "https://www.instagram.com/visionet.id/")!)
                NavigationLink(destination : BottomNavigationView()){
                    Text("Bottom Navigation View")
                        .foregroundColor(.black)
                }
                NavigationLink(destination : TabsView()){
                    Text("Tabs View")
                        .foregroundColor(.black)
                }
                NavigationLink(destination : TabViewTabItem()){
                    Text("TabView-TabItem")
                        .foregroundColor(.black)
                }
                NavigationLink(destination : TabViewTabItem()){
                    Text("List Item ")
                        .foregroundColor(.black)
                }
                NavigationLink(destination : LoginScreenView()){
                    Text("Login Screen ")
                        .foregroundColor(.black)
                }
//                Link(destination: URL(string: "https://sarunw.com")!) {
//                            Image("share")
//                                .resizable()
//                                .scaledToFit()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 50, height: 50, alignment: .bottom)
//                                .font(.largeTitle)
//                                .foregroundColor(.pink)
//                        }
            }
            .foregroundColor(.black)
            .navigationTitle("List Menu to Learn")
        }
        
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
