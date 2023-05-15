//
//  ContentView.swift
//  GolfDifferentialCalculator
//
//  Created by Brady Chin on 2023.05.12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ScoreCalculatorView()
                .tabItem {
                    Label("Score", systemImage: "plus.forwardslash.minus")
                }
            DifferentialCalculatorView()
                .tabItem {
                    Label("Differential", systemImage: "number")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
