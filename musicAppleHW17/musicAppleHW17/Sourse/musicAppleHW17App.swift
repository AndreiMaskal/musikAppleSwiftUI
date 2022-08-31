//
//  musicAppleHW17App.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 29/08/2022.
//

import SwiftUI

@main
struct musicAppleHW17App: App {
    
    init() {
        UITabBar.appearance().backgroundColor = (UIColor(red: 0.9,
                                                       green: 0.9,
                                                        blue: 0.9, alpha: 1))
    }
    
    var body: some Scene {
        WindowGroup {
            TableView()
                
        }
    }
}
