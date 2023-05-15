//
//  ButtonView.swift
//  GolfDifferentialCalculator
//
//  Created by Brady Chin on 2023.05.15.
//

import SwiftUI

struct ButtonView: View {
    @StateObject private var viewModel = ViewModel()
    let data: [String]
    var body: some View {
        Button(action: {
            print("Gross Score before func: \(viewModel.grossScore)")
            viewModel.calculateGrossScore(data: data)
            print("Gross Score after func: \(viewModel.grossScore)")
//            viewModel.calculatePlusMinus(data: data)
//            viewModel.calculateDifferential(data: data)
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 200, height: 50)
                    .foregroundColor(.green)
                Text("Calculate")
                    .bold()
                    .foregroundColor(.white)
            }
        })
        .padding(.bottom, 20)
    }
}

struct CalculateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(data: ["0", "1"])
    }
}
