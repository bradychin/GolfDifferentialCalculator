//
//  ViewModel.swift
//  GolfDifferentialCalculator
//
//  Created by Brady Chin on 2023.05.12.
//

import SwiftUI

final class ViewModel: ObservableObject {
    // MARK: - Variables
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible())]
    @Published var scoreData = Array<String>(repeating: "", count: 4)
    @Published var scoreLabels = ["CR", "CSR", "Diff", "Par"]
    @Published var grossScore = 0.0
    @Published var plusMinus = 0.0
    @Published var differentialData = Array<String>(repeating: "", count: 3)
    @Published var differentialLabels = ["CR", "CSR", "Adj"]
    @Published var differential = 0.0
    
    // MARK: - Functions
    func calculateGrossScore(data: [String]) {
        grossScore = (Double(data[2])! * Double(data[1])!) / 113 + Double(data[0])!
        
    }
    func calculatePlusMinus(data: [String]) {
        plusMinus = grossScore - Double(data[3])!
    }
    func calculateDifferential(data: [String]) {
        differential = ((Double(data[2])! - Double(data[0])!) / Double(data[1])!) * 113
    }
}
