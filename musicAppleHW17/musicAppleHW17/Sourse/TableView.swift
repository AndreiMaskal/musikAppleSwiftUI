//
//  TableView.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 29/08/2022.
//

import SwiftUI

struct TableView: View {
    var body: some View {
        ZStack {
            TabView {
                NavigationView {
                    LibraryView()
                }
                .tabItem {
                    Image(systemName: "music.note.tv.fill")
                    Text("Медиатека")
                        
                }
                
                Text("Радио")
                    .tabItem {
                        Image(systemName: "radio.fill")
                        Text("Радио")
                    }
                
                Text("Поиск")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            PlayerView()
                .offset(y: -30)

        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
