//
//  TableView.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 29/08/2022.
//

import SwiftUI

struct TableView: View {
    
    @State var expand = false
    
    @Namespace var animation
    
    var body: some View {
        ZStack {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note.tv.fill")
                        Text("Медиатека")
                    }
                
                RadioView()
                
                    .tabItem {
                        Text("Радио")
                        Image(systemName: "radio.fill")
                    }
                NavigationView {
                    SearchView()
                }
                .tabItem {
                    Text("Поиск")
                    Image(systemName: "magnifyingglass")
                }
            }
            .accentColor(.red)
            
            .safeAreaInset(edge: .bottom) {
                PlayerView(animation: animation, expand: $expand)
                    .offset(y: expand  ? 0 : -50)
            }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
