//
//  DataCellsView.swift
//  GolfDifferentialCalculator
//
//  Created by Brady Chin on 2023.05.15.
//

import SwiftUI

struct DataCellsView: View {
    var labels: String
    var body: some View {
            RoundedRectangle(cornerRadius: 4)
                .stroke(lineWidth: 5)
                .frame(width: 100, height: 100)
    }
}


struct DataCellsView_Previews: PreviewProvider {
    static var previews: some View {
        DataCellsView(labels: "CR")
    }
}
