//
//  musicAppleHW17App.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 29/08/2022.
//

import SwiftUI

@main
struct musicAppleHW17App: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            TableView()
                .environmentObject(modelData)
                
        }
    }
}

