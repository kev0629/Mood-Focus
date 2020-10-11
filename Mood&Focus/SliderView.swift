//
//  SliderView.swift
//  Mood&Focus
//
//  Created by kevin saffioti on 12/10/2020.
//

import SwiftUI

struct SliderView: View {
    @State var sliderValue: Double = 5
    var body: some View {
        Slider(value: $sliderValue, in: 0...10,step: 0.01)
            .padding(5)
            .accentColor(Color.white)
            .background(Capsule().fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.green]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)))
        Text("\(sliderValue, specifier: "%.0f")")
            .font(.largeTitle)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
