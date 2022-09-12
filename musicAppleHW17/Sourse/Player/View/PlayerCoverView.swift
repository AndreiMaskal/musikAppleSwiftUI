//
//  PlayerCoverView.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 12/09/2022.
//

import SwiftUI

struct PlayerCoverView: View {

    @Binding var expand: Bool

    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(UIColor.systemGray5))
                .frame(width: 70, height: 70)
                .shadow(radius: 5, x: 2, y: 2)
                .opacity(0.4)
            Image(systemName: "music.note")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .opacity(0.1)


            Image("Face-smile.svg-2")
                .resizable()
                .frame(width: expand ? Metric.screenHeight / 3 : 70,
                       height: expand ? Metric.screenHeight / 3 : 70)
                .cornerRadius(expand ? 10 : 0)
                .shadow(radius: 5, x: 2, y: 2)
                .scaledToFit()
        }
        .padding(20)
    }
}
