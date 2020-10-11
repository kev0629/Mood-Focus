//
//  IconsView.swift
//  Mood&Focus
//
//  Created by kevin saffioti on 12/10/2020.
//

import SwiftUI

struct FocusIcons: View {
    var body: some View{
        HStack{
            Spacer()
            Image("disiped")
                .resizable()
                .scaledToFit()
            Image("hard")
                .resizable()
                .scaledToFit()
            Image("boring")
                .resizable()
                .scaledToFit()
            Image("okay")
                .resizable()
                .scaledToFit()
            Image("concentrated")
                .resizable()
                .scaledToFit()
            Spacer()
        }
    }
}
struct MoodIcons: View {
    var body: some View{
        HStack{
            Spacer()
            Image("hangry")
                .resizable()
                .scaledToFit()
            Image("sad")
                .resizable()
                .scaledToFit()
            Image("cool")
                .resizable()
                .scaledToFit()
            Image("Happy")
                .resizable()
                .scaledToFit()
            Image("Verry_Happy")
                .resizable()
                .scaledToFit()
            Spacer()
            
        }
    }
}

struct IconsView_Previews: PreviewProvider {
    static var previews: some View {
        FocusIcons()
    }
}
