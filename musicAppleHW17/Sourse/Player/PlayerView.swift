//
//  PlayerView.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 30/08/2022.
//

import SwiftUI

struct PlayerView: View {

    var body: some View {
        VStack {
            Spacer()
            HStack() {
                Image("Face-smile.svg-2")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .center)
                    .padding()
                    .foregroundColor(Color.gray)
                
                VStack(alignment: .leading) {
                    Text("Исполнитель")
                        .font(.headline)
                    Text("Песня")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }

                Spacer()
                
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .font(.title3)
                            .foregroundColor(.red)
                    }.buttonStyle(PlainButtonStyle())
                
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.title3)
                            .foregroundColor(.red)
                    }.buttonStyle(PlainButtonStyle())
                        .padding()
                }
            .background(Color.white)
            }
            .overlay(Divider(), alignment: .bottom)
            .padding(.bottom)
        }
    }

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
