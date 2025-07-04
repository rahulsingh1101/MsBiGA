//
//  EmploymentServicesGrid.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct EmploymentServicesGrid: View {
    let services = [
        ("📝", "आवेदन सहायता", "फॉर्म भरने में मदद"),
        ("🏢", "जॉब फेयर", "रोज़गार मेले की जानकारी"),
        ("💳", "रोज़गार कार्ड", "पंजीकरण व नवीनीकरण"),
        ("🎓", "प्रशिक्षण कार्यक्रम", "कौशल विकास")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("रोज़गार सेवाएं")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.primary)
                .padding(.horizontal, 16)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 12) {
                ForEach(services.indices, id: \.self) { index in
                    VStack(spacing: 8) {
                        Text(services[index].0)
                            .font(.system(size: 32))
                        
                        Text(services[index].1)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.primary)
                            .multilineTextAlignment(.center)
                        
                        Text(services[index].2)
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
}
