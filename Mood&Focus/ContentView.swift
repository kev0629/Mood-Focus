//
//  ContentView.swift
//  Mood&Focus
//
//  Created by kevin saffioti on 02/10/2020.
//

import SwiftUI

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
            Spacer()
                .frame(height: 20)
            SliderView()
        }.padding()
    }
}
struct FocusView: View {
    @State var sliderValue: Double = 5
    var body: some View {
        VStack {
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
            Spacer()
                .frame(height: 20)
            SliderView()
        }.padding()
    }
}

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
