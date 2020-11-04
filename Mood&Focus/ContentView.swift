//
//  ContentView.swift
//  Mood&Focus
//
//  Created by kevin saffioti on 02/10/2020.
//

import SwiftUI
import UIKit
import GoogleMobileAds

struct ContentView: View {
    @State var someValue: CGFloat = 0
    var body: some View {
        TabView{
            
            MoodView().tabItem { Image(systemName: "smiley") }
            FocusView().tabItem { Image(systemName: "lightbulb") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MoodView: View {
    var body: some View {
        VStack {
            MoodIcons()
            Spacer()
                .frame(height: 20)
            SliderView()
            GADBannerViewController()
                   .frame(width: kGADAdSizeBanner.size.width, height: kGADAdSizeBanner.size.height)
            
        }.padding()
    }
}

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

struct GADBannerViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let view = GADBannerView(adSize: kGADAdSizeBanner)
        let viewController = UIViewController()
        view.adUnitID = admobID
        view.rootViewController = viewController
        viewController.view.addSubview(view)
        viewController.view.frame = CGRect(origin: .zero, size: kGADAdSizeBanner.size)
        view.load(GADRequest())
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

