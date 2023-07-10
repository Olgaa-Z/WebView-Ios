//
//  TabViewTabItem.swift
//  WebView-Ios
//
//  Created by visionet on 10/07/23.
//

import SwiftUI

struct TabViewTabItem: View {
    var body: some View {
        TabView{
            FirstView()
                .tabItem{
                    Label("Search", systemImage: "magnifyingglass")
                }
            SecondView().tabItem{
                Label("Home", systemImage: "house")
                
            }
            ThirdView()
                .tabItem{
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

struct TabViewTabItem_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTabItem()
    }
}
