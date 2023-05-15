//
//  ScoreCalculatorView.swift
//  GolfDifferentialCalculator
//
//  Created by Brady Chin on 2023.05.12.
//

import SwiftUI

struct ScoreCalculatorView: View {
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        VStack {
            Spacer()
            HStack {
                CalculationCircleView(calculation: viewModel.grossScore, label: "Score")
                Spacer()
                CalculationCircleView(calculation: viewModel.plusMinus, label: "+/-")
            }
            .padding(.horizontal, 30)
            Spacer()
            LazyVGrid(columns: viewModel.columns, spacing: 20) {
                ForEach(0..<4, id: \.self) { index in
                    ZStack {
                        DataCellsView(labels: viewModel.scoreLabels[index])
                        TextField("\(viewModel.scoreLabels[index])", text: $viewModel.scoreData[index])
                            .font(.largeTitle)
                            .fontWeight(.light)
                            .frame(maxWidth: 80)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                    }
                }
            }
            .frame(width: 250)
            Spacer()
            ButtonView(data: viewModel.scoreData)
                .padding(.bottom, 20)
        }
    }
}

struct ScoreCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreCalculatorView()
    }
}
