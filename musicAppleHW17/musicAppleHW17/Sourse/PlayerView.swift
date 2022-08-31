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
                HStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(red: 0.9,
                                                   green: 0.9,
                                                   blue: 0.9))
                            .frame(width: 50, height: 50)
                            .cornerRadius(9)
                            .shadow(radius: 6)
                            .padding()
                        Image(systemName: "music.note")
                            .foregroundColor(Color.gray)
                    }
                    .padding()
                    Text("Не исполняется").foregroundColor(.gray)
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .font(.title3)
                            .foregroundColor(.gray)
                    }.buttonStyle(PlainButtonStyle())
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.title3)
                            .foregroundColor(.gray)
                    }.buttonStyle(PlainButtonStyle())
                        .padding()
                }
                .background(Color(red: 0.9,
                                  green: 0.9,
                                  blue: 0.9))
            }
            .overlay(Divider(), alignment: .bottom)
            .padding(.bottom)
        }
    }
    
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
