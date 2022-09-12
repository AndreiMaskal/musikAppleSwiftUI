//
//  RadioView.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 03/09/2022.
//

import SwiftUI

struct RadioView: View {
    @State private var radioLibrary = RadioModel.mocks
    let rows = [GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(.vertical, showsIndicators: true) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: rows) {
                            ForEach(radioLibrary) { radio in
                                RadioSectionView(radio: radio)
                            }
                            .frame(width: UIScreen.main.bounds.width - 16)
                            .padding(.horizontal, 8)
                        }
                    }
                    StationView()
                        .padding(.horizontal, 8)
                }
            }
            .navigationTitle("Радио")
        }
    }
}
struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
