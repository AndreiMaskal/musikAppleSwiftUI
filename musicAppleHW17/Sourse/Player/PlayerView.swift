//
//  File.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 12/09/2022.
//

import SwiftUI

struct PlayerView: View {
    
    var animation: Namespace.ID
    @Binding var expand: Bool
    @State private var volume: CGFloat = 7
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(UIColor.secondarySystemBackground))
                .frame(maxHeight: expand ? .infinity : 90)
                .opacity(0.95)
            
            VStack {
                
                if expand {
                    Capsule()
                        .fill(.secondary)
                        .frame(width: expand ? 60 : 0, height: expand ? 4 : 0)
                        .opacity(expand ? 1 : 0)
                        .padding(.top, expand ? 30 : 0)
                        .padding(.vertical, expand ? 30 : 0)
                }
                
                HStack {
                    
                    PlayerCoverView(expand: $expand)
                    
                    if !expand {
                        VStack(alignment: .leading) {
                            Text("Исполнитель")
                                .font(.headline)
                                .matchedGeometryEffect(id: "Label", in: animation)
                            Text("Песня")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                        }
                        
                        Spacer()
                        
                        Button {
                        } label: {
                            PlayerButtonImage(systemName: "play.fill", size: 25)
                        }
                        
                        Button {
                        } label: {
                            PlayerButtonImage(systemName: "forward.fill", size: 25)
                        }
                    }
                }
                
                if expand {
                    VStack {
                        HStack {
            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Песня")
                                    .font(.title3)
                                                        
                                Text("Исполнитель")
                                    .foregroundColor(.secondary)
                        
                            }
                            .matchedGeometryEffect(id: "Title", in: animation)
                    
                            
                            Spacer()
                            
                            Button {
                            } label: {
                                PlayerButtonImage(systemName: "ellipsis", size: 20)
                            }
                        }
                        .padding()
                        
                        PlayerProgressLine()
                        
                        PlayerExtendedControlModul()
                        
                        
                        HStack(spacing: 15) {
                            Image(systemName: "speaker.fill")
                            Slider(value: $volume, in: 0...10, onEditingChanged: {_ in
                                print("volume \(volume)")
                            })
                            .tint(.gray)
                            Image(systemName: "speaker.wave.2.fill")
                        }
                        .padding()
                        
                        PlayerExtendedBottomButtons()
                            .padding()
                        
                        
                    }

                    .frame(width: expand ? nil : 0, height: expand ? nil : 0)
                    .opacity(expand ? 1 : 0)
                }
                if expand {
                    Spacer()
                }
            }
        }
      
        .onTapGesture(count: 2) {
            withAnimation(.spring()){
                expand.toggle()
            }
        }
        
    }
}

enum Metric {
    static var playerHeight: CGFloat = 90
    static var screenHeight = UIScreen.main.bounds.height
}

