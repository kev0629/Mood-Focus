//
//  MoodView.swift
//  Mood&Focus
//
//  Created by kevin saffioti on 12/10/2020.
//

import SwiftUI
import UIKit
import GoogleMobileAds

struct FocusView: View {
    @State var sliderValue: Double = 5
    var body: some View {
        VStack {
            FocusIcons()
            Spacer()
                .frame(height: 20)
            SliderView()
            GADBannerViewController()
                   .frame(width: kGADAdSizeBanner.size.width, height: kGADAdSizeBanner.size.height)
            
        }.padding()
    }
}

struct MoodView_Previews: PreviewProvider {
    static var previews: some View {
        FocusView()
    }
}
