//
//  UpcomingExams.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct UpcomingExams: View {
    let exams = [
        ("Bihar Board 10th", "फरवरी 2025"),
        ("JEE Main", "जनवरी 2025"),
        ("SSC CGL", "मार्च 2025")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("आगामी परीक्षाएं 📅")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(Color(red: 0.184, green: 0.490, blue: 0.196))
            
            VStack(spacing: 8) {
                ForEach(exams.indices, id: \.self) { index in
                    HStack {
                        Text(exams[index].0)
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.primary)
                        
                        Spacer()
                        
                        Text(exams[index].1)
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 0.961, green: 0.486, blue: 0.0))
                    }
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(8)
                }
            }
        }
        .padding(16)
        .background(Color(red: 0.910, green: 0.961, blue: 0.914))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
