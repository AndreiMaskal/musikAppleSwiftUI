//
//  AlbumDataModel.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 10/09/2022.
//

import Foundation

struct AlbumDataModel: Hashable, Identifiable {
    var id = UUID()
    var author: String
    var song: String
    var image: String
    
    static var mocks: [AlbumDataModel] = [
        AlbumDataModel(author: "Леша Свик",
                       song: "Танцевали до утра",
                       image: "Face-smile.svg-2"),
        AlbumDataModel(author: "ANNA ASTI",
                       song: "Феникс",
                       image: "Face-smile.svg-2"),
        AlbumDataModel(author: "Akmal'",
                       song: "По полюшку",
                       image: "Face-smile.svg-2"),
        AlbumDataModel(author: "Time Today",
                       song: "Moneybagg Yo",
                       image: "Face-smile.svg-2")
    ]
}

