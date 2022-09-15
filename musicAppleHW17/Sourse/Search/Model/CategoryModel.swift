//
//  CategoryModel.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 10/09/2022.
//

import Foundation

struct CategoryModel: Identifiable, Hashable {
    var id = UUID()
    let title: String
    let image: String

    static var mocks: [CategoryModel] = [
        CategoryModel(title: "Танцевальная", image: "Face-smile.svg-2"),
        CategoryModel(title: "K-Pop", image: "Face-smile.svg-2"),
        CategoryModel(title: "Альтернатива", image: "Face-smile.svg-2"),
        CategoryModel(title: "Электроника", image: "Face-smile.svg-2"),
        CategoryModel(title: "Танцевальная", image: "Face-smile.svg-2"),
        CategoryModel(title: "K-Pop", image: "Face-smile.svg-2"),
        CategoryModel(title: "Альтернатива", image: "Face-smile.svg-2"),
        CategoryModel(title: "Электроника", image: "Face-smile.svg-2")
    ]
}
