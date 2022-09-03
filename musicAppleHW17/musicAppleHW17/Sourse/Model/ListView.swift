//
//  ListView.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 30/08/2022.
//

import SwiftUI

struct ListView: View {
    @State private var mediaLibrary = PlayListModel.mocks
    @State private var selectedItems : Set<String> = Set<String>()
    
    var body: some View {
        List(selection: $selectedItems) {
            Section() {
                ForEach(mediaLibrary, id:\.self) { media in
                    MusicView(media: media)
                        .listRowSeparator(.visible)
                }.onMove(perform: move)
            }
        }
        .environment(\.editMode, .constant(.active))
        .listStyle(.grouped)
    }

func move(from source: IndexSet, to destination: Int) {
    mediaLibrary.move(fromOffsets: source, toOffset: destination)
   }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

