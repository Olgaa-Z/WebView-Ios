//
//  TabsView.swift
//  WebView-Ios
//
//  Created by visionet on 07/07/23.
//

import SwiftUI

struct TabsView: View {
    
    @State private var selectedTab: Int = 0

        let tabs: [Tab] = [
            .init(icon: Image(systemName: "music.note"), title: "Music"),
            .init(icon: Image(systemName: "film.fill"), title: "Movies"),
            .init(icon: Image(systemName: "book.fill"), title: "Books")
        ]
    init() {
          let appearance = UINavigationBarAppearance()
          appearance.configureWithOpaqueBackground()
         // appearance.backgroundColor = UIColor(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1))
          UINavigationBar.appearance().standardAppearance = appearance
          UINavigationBar.appearance().scrollEdgeAppearance = appearance
          UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
          UINavigationBar.appearance().isTranslucent = false
      }
    
    
    var body: some View {
        NavigationView{
            GeometryReader{ geo in
                VStack{
                    //tabs
                    Tabs(tabs: tabs, geoWidth: geo.size.width, selectedTab: $selectedTab)
                    
                    //view
                    TabView(selection: $selectedTab,
                                                content: {
                                                    MusicView()
                                                        .tag(0)
                                                    MoviesView()
                                                        .tag(1)
                                                    BooksView()
                                                        .tag(2)
                                                })
                                                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                }
                
                .navigationBarTitleDisplayMode(.inline)
                .ignoresSafeArea()
            }
        }
        
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
