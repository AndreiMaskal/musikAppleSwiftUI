//
//  ModelData.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 10/09/2022.
//

import Foundation

 class ModelData: ObservableObject {
    @Published var albumsCategory: [AlbumCategoryModel] = AlbumCategoryModel.mocks
    @Published var albums: [AlbumDataModel] = AlbumDataModel.mocks
    @Published var media: [PlayListModel] = PlayListModel.mocks
    @Published var category: [CategoryModel] = CategoryModel.mocks
    @Published var radio: [RadioModel] = RadioModel.mocks
}
