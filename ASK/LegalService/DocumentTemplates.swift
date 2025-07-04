//
//  DocumentTemplates.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct DocumentTemplates: View {
    let templates = ["रेंट एग्रीमेंट", "शपथ पत्र", "वसीयत", "NOC फॉर्मेट"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("सामान्य दस्तावेज़ टेम्पलेट 📋")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.primary)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 10) {
                ForEach(templates, id: \.self) { template in
                    Text(template)
                        .font(.system(size: 13))
                        .foregroundColor(.primary)
                        .padding(12)
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.systemGray4), lineWidth: 1)
                        )
                        .cornerRadius(8)
                }
            }
        }
        .padding(16)
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
