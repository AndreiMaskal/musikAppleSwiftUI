//
//  LibraryView.swift
//  musicAppleHW17
//
//  Created by Andrei Maskal on 29/08/2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
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

            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: NavigationLink(
                destination:
                    ListView(),
                label: {
                    Text("Править")
                        .foregroundColor(.red)
                }))
            .navigationBarBackButtonHidden(true)
        }
    }
    
}
struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

