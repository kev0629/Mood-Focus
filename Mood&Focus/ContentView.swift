//
//  ContentView.swift
//  Mood&Focus
//
//  Created by kevin saffioti on 02/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MoodView().tabItem { Text("Mood") }
            FocusView().tabItem { Text("Focus") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MoodView: View {
    @State var sliderValue: Double = 5
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
            Slider(value: $sliderValue, in: 0...10,step: 1)
                .padding()
                .background(Capsule().stroke(Color.gray, lineWidth: 2))
                .accentColor(Color.gray)
            Text("\(sliderValue, specifier: "%.0f")")
                .font(.largeTitle)
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
            Slider(value: $sliderValue, in: 0...10,step: 1)
                .padding()
                .background(Capsule().stroke(Color.gray, lineWidth: 2))
                .accentColor(Color.gray)
            Text("\(sliderValue, specifier: "%.0f")")
                .font(.largeTitle)
        }.padding()
    }
}
