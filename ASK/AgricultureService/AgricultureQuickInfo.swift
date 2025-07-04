//
//  AgricultureQuickInfo.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct AgricultureQuickInfo: View {
    let info = [
        ("💧", "नमी", "65%"),
        ("🌱", "मिट्टी pH", "6.8"),
        ("🌧️", "वर्षा (मासिक)", "125mm")
    ]
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(info.indices, id: \.self) { index in
                VStack(spacing: 4) {
                    Text(info[index].0)
                        .font(.system(size: 24))
                    
                    Text(info[index].1)
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                    
                    Text(info[index].2)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.primary)
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
