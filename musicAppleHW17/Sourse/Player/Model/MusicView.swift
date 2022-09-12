//
//  MusicView.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 30/08/2022.
//

import SwiftUI

struct MusicView: View {
    let media: PlayListModel
    var body: some View {
        HStack {
            Image(systemName: media.icon)
                .foregroundColor(.red)
            Text(media.name)
                .font(.title3)
                .padding([.top, .bottom], 8)
        }
    }
}

struct MediaRowView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView(media: PlayListModel.mocks[0])
            .previewLayout(.fixed(width: 400.0, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}
