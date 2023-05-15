//
//  DifferentialCalculatorView.swift
//  GolfDifferentialCalculator
//
//  Created by Brady Chin on 2023.05.15.
//

import SwiftUI

struct DifferentialCalculatorView: View {
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        VStack {
            Spacer()
            CalculationCircleView(calculation: viewModel.differential, label: "Differential")
                .padding(.horizontal, 30)
            Spacer()
            LazyVGrid(columns: viewModel.columns, spacing: 20) {
                ForEach(0..<2, id: \.self) { index in
                    ZStack {
                        DataCellsView(labels: viewModel.differentialLabels[index])
                        TextField("\(viewModel.differentialLabels[index])", text: $viewModel.differentialData[index])
                            .font(.largeTitle)
                            .fontWeight(.light)
                            .frame(maxWidth: 80)
                            .multilineTextAlignment(.center)
                            .keyboardType(.decimalPad)
                    }
                }
            }
            .frame(width: 250)
            ZStack {
                DataCellsView(labels: viewModel.differentialLabels[2])
                    .padding(.top, 12)
                TextField("\(viewModel.differentialLabels[2])", text: $viewModel.differentialData[2])
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .frame(maxWidth: 80)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
            }
            Spacer()
            ButtonView(data: viewModel.differentialData)
        }
    }
}

struct DifferentialCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        DifferentialCalculatorView()
    }
}

