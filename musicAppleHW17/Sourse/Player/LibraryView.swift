//
//  LibraryView.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 29/08/2022.
//

import SwiftUI

struct LibraryView: View {
    
    @State var isEditMode = false
    
    var body: some View {
        NavigationView {
            VStack {
                if isEditMode {
                    ListView()
                } else {
                    ZStack {
                        VStack(spacing: 7) {
                            Text("Ищете свою музыку?")
                                .font(.custom("", size: 30))
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                            Text("Здесь появится купленная Вами в \n iTunes Store музыка.")
                                .font(.custom("", size: 20))
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.center)
                        }
                    }
                }
            }
            .navigationTitle("Медиатека")
            .toolbar {
                Button {
                    isEditMode.toggle()
                } label: {
                    if isEditMode {
                        Text("Готово")
                    } else {
                        Text("Править")
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}
struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

