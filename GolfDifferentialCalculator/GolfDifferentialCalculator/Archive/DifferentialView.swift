//
//  DifferentialView.swift
//  GolfDifferentialCalculator
//
//  Created by Brady Chin on 2023.05.12.
//

import SwiftUI
import Charts

struct DifferentialView: View {
    let differentials: [Differentials] = [
        .init(courseName: "Lincoln", date: "2023.05.07", courseRating: 66.10, courseSlopeRating: 108, grossScore: 86),
        .init(courseName: "Grant", date: "2023.05.07", courseRating: 65.20, courseSlopeRating: 107, grossScore: 84),
        .init(courseName: "Greenfield", date: "2023.05.07", courseRating: 67.0, courseSlopeRating: 112, grossScore: 86),
        .init(courseName: "Lincoln", date: "2023.05.07", courseRating: 66.10, courseSlopeRating: 108, grossScore: 86),
        .init(courseName: "Dretzka", date: "2023.05.07", courseRating: 69.60, courseSlopeRating: 119, grossScore: 88),
        .init(courseName: "Rivermoor", date: "2023.05.07", courseRating: 69.80, courseSlopeRating: 123, grossScore: 94),
        .init(courseName: "Currie", date: "2023.05.07", courseRating: 68.70, courseSlopeRating: 116, grossScore: 89),
        .init(courseName: "Lincoln", date: "2023.05.07", courseRating: 66.10, courseSlopeRating: 108, grossScore: 86)
    ]
    var body: some View {
        VStack {
            Chart {
                ForEach(differentials) { differential in
                    BarMark(
                        x: .value("Course", differential.courseName),
                        y: .value("Score", differential.grossScore)
                    )
                    .foregroundStyle(Color.green.gradient)
                }
                
            }
            .frame(height: 150)
            ZStack {
                Circle()
                    .stroke(lineWidth: 10)
                    .foregroundColor(.green)
                    .frame(height: 120)
                Text("20.1")
                    .font(.largeTitle)
                    .fontWeight(.light)
            }
            .padding()
            List(differentials) { differential in
                HStack {
                    VStack(alignment: .leading) {
                        Text(differential.courseName)
                        Text(differential.date)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    Text("Score: \(differential.grossScore)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 1)
                            .foregroundColor(.green)
                            .frame(height: 40)
                        Text("20.1")
                    }
                }
            }
            .listStyle(.inset)
            Button(action: {
                
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 200, height: 50)
                        .foregroundColor(.green)
                    Text("Add Score")
                        .bold()
                        .foregroundColor(.white)
                }
            })
            .padding(.top, 15)
        }
    }
}

struct DifferentialView_Previews: PreviewProvider {
    static var previews: some View {
        DifferentialView()
    }
}

struct Differentials: Identifiable {
    let id = UUID()
    let courseName: String
    let date: String
    let courseRating: Double
    let courseSlopeRating: Double
    let grossScore: Int
}

extension Date {
    static func from(year: Int, month: Int, day: Int) -> Date {
        let components = DateComponents(year: year, month: month, day: day)
        return Calendar.current.date(from: components)!
    }
}
