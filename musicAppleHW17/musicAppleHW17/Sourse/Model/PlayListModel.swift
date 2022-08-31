//
//  PlayListModel.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 30/08/2022.
//

import Foundation

struct PlayListModel: Identifiable, Hashable  {
    var id = UUID()
    let name: String
    let icon: String
    
    static var mocks: [PlayListModel] = [PlayListModel(name: "Плейлисты",
                                               icon: "music.note.list"),
                                         PlayListModel(name: "Артисты",
                                              icon: "music.mic"),
                                         PlayListModel(name: "Альбомы",
                                              icon: "square.stack"),
                                         PlayListModel(name: "Песни",
                                              icon: "music.note"),
                                         PlayListModel(name: "Телешоу и фильмы",
                                              icon: "tv"),
                                         PlayListModel(name: "Видеоклипы",
                                              icon: "music.note.tv"),
                                         PlayListModel(name: "Жанры",
                                              icon: "guitars"),
                                         PlayListModel(name: "Сборники",
                                              icon: "person.2.crop.square.stack"),
                                         PlayListModel(name: "Авторы",
                                              icon: "music.quarternote.3"),
                                         PlayListModel(name: "Загружено",
                                              icon: "arrow.down.circle"),
                                         PlayListModel(name: "Домашняя коллекция",
                                              icon: "music.note.house")]
}
