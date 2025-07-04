//
//  EmploymentStatsRow.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct EmploymentStatsRow: View {
    let stats = [
        ("2,450+", "सक्रिय नौकरियां"),
        ("150+", "नई इस सप्ताह"),
        ("85%", "प्लेसमेंट दर")
    ]
    
    var body: some View {
        HStack(spacing: 12) {
            ForEach(stats.indices, id: \.self) { index in
                VStack(spacing: 4) {
                    Text(stats[index].0)
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color(red: 0.961, green: 0.486, blue: 0.0))
                    
                    Text(stats[index].1)
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .padding(16)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
            }
        }
        .padding(.horizontal, 16)
    }
}
