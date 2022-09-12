//
//  FavoritePlayList.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 12/09/2022.
//

import SwiftUI

struct FavoritePlayList: View {
    
    @EnvironmentObject var modelData: ModelData
    let rows = [GridItem(.adaptive(minimum: 280, maximum: 320))]
    @State private var albumLibrary = CategoryModel.mocks
    
    var geometry: GeometryProxy
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(modelData.albumsCategory) { album in
                    FavoritePlayListSection(album: album)
                        .frame(width: geometry.size.width * 0.92)
                }
            }
            .padding([.horizontal])
        }
    }
}

struct FavoritePlayList_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            FavoritePlayList(geometry: geometry)
                .environmentObject(ModelData())
        }
    }
}
