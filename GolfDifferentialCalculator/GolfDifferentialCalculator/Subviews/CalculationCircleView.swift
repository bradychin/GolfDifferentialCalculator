//
//  CalculationCircleView.swift
//  GolfDifferentialCalculator
//
//  Created by Brady Chin on 2023.05.15.
//

import SwiftUI

struct CalculationCircleView: View {
    @StateObject private var viewModel = ViewModel()
    @State var result = ""
    let calculation: Double
    let label: String
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: 8)
                    .foregroundColor(.green)
                    .frame(height: 150)
                Text("\(viewModel.grossScore, specifier: "%.1f")")
                    .font(.largeTitle)
                    .fontWeight(.light)
            }
            Text(label)
        }
    }
}

struct CalculationCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationCircleView(calculation: 0.0, label: "Label")
    }
}
