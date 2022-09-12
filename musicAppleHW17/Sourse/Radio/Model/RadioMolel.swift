//
//  RadioMolel.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 04/09/2022.
//

import Foundation

struct RadioModel: Identifiable, Hashable {
    var id = UUID()
    var description: String
    var image: String
    var stationImage: String
    var stationDescription: String

    
    static var mocks: [RadioModel] = [RadioModel(description: "Pop",
                                                 image: "Face-smile.svg-2",
                                                 stationImage: "Face-smile.svg-2",
                                                 stationDescription: "Pop-clasic"),
                                      RadioModel(description: "Rock",
                                                 image: "Face-smile.svg-2",
                                                 stationImage: "Face-smile.svg-2",
                                                 stationDescription: "Rock"),
                                      RadioModel(description: "Jazz",
                                                 image: "Face-smile.svg-2",
                                                 stationImage: "Face-smile.svg-2",
                                                 stationDescription: "Jazz"),
                                      RadioModel(description: "Clasic",
                                                 image: "Face-smile.svg-2",
                                                 stationImage: "Face-smile.svg-2",
                                                 stationDescription: "Clasic")]
}
