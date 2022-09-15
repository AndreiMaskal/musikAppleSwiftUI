//
//  AlbumCategoryModel.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 11/09/2022.
//

import Foundation

struct AlbumCategoryModel: Identifiable, Hashable {
    var id = UUID()
    var titleDescription: String
    var title: String

    var image: String

    static var mocks: [AlbumCategoryModel] = [
        AlbumCategoryModel(titleDescription: "Ностальгия по поп-музыке 2000-х",
                   title: "Apple Music Поп",
                   image: "Face-smile.svg-2"),
        AlbumCategoryModel(titleDescription: "Родные песни",
                   title: "Apple Music Хиты на русском",
                   image: "Face-smile.svg-2"),
        AlbumCategoryModel(titleDescription: "Песни для детей",
                   title: "Apple Music",
                   image: "Face-smile.svg-2"),
        AlbumCategoryModel(titleDescription: "Золотой запас",
                   title: "Apple Music Поп",
                   image: "Face-smile.svg-2")
    ]
}
