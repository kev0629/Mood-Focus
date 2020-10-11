//
//  AddView.swift
//  Mood&Focus
//
//  Created by kevin saffioti on 12/10/2020.
//

import SwiftUI
import UIKit
import GoogleMobileAds

struct GADBannerViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let view = GADBannerView(adSize: kGADAdSizeBanner)
        let viewController = UIViewController()
        view.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        view.rootViewController = viewController
        viewController.view.addSubview(view)
        viewController.view.frame = CGRect(origin: .zero, size: kGADAdSizeBanner.size)
        view.load(GADRequest())
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}


struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        GADBannerViewController()
    }
}
