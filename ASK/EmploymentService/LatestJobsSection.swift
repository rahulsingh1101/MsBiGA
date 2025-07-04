//
//  LatestJobsSection.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct LatestJobsSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("नवीनतम नौकरियां")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.primary)
                
                Spacer()
                
                Button("सभी देखें") {
                    // Handle action
                }
                .font(.system(size: 14))
                .foregroundColor(Color(red: 0.961, green: 0.486, blue: 0.0))
            }
            .padding(.horizontal, 16)
            
            VStack(spacing: 12) {
                JobCard(
                    title: "जूनियर इंजीनियर (JE)",
                    company: "बिहार राज्य विद्युत बोर्ड",
                    type: "सरकारी",
                    location: "पटना",
                    qualification: "डिप्लोमा/B.Tech",
                    positions: "250 पद",
                    salary: "₹35,000-45,000/माह",
                    deadline: "अंतिम तिथि: 31 जनवरी",
                    isGovernment: true
                )
                
                JobCard(
                    title: "Sales Executive",
                    company: "Reliance Retail",
                    type: "निजी",
                    location: "बक्सर",
                    qualification: "12वीं पास",
                    positions: "15 पद",
                    salary: "₹15,000-20,000/माह",
                    deadline: "तुरंत जॉइनिंग",
                    isGovernment: false
                )
            }
            .padding(.horizontal, 16)
        }
    }
}
