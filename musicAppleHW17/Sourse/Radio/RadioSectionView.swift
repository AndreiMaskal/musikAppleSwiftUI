//
//  RadioSectionView.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 03/09/2022.
//

import SwiftUI

struct RadioSectionView: View {
    let radio: RadioModel
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            Text("Избранная радиостанция")
                .foregroundColor(.secondary)
                .textCase(.uppercase)
                .font(.caption2)
            Text(radio.description)
                .foregroundColor(.primary)
                .font(.title3)
            Text("Станция New-Radio")
                .foregroundColor(.secondary)
                .font(.title3)
                .padding(.bottom, -1)
            ZStack(alignment: .bottomLeading) {
                Image(radio.image)
                    .resizable()
                    .scaledToFit()
                Text("Станция New-Radio")
                    .font(.caption)
                    .padding(8)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .bottomLeading)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
                            .opacity(0.5)
                    )
                                    .shadow(color: .black, radius: 8, x: 0, y: -5)
            }
            .cornerRadius(12)
            Spacer()
        }
    }
}

struct RadioSectionView_Previews: PreviewProvider {
    static var previews: some View {
        RadioSectionView(radio: RadioModel.mocks[0])
    }
}
