//
//  StationView.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 04/09/2022.
//

import SwiftUI

struct StationView: View {
    @State private var stationLibrary = RadioModel.mocks
    let columns = [GridItem(.flexible())]
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            Text("Жанры")
                .font(.title2)
                .fontWeight(.bold)
            LazyVGrid(columns: columns) {
                ForEach(stationLibrary) { station in
                    StationSectionView(station: station)
                        .padding(.bottom, 2)
                }
            }
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.clear)
        }
    }
}

struct StationView_Previews: PreviewProvider {
    static var previews: some View {
        StationView()
    }
}
