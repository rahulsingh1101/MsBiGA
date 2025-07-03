//
//  StatCard.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore

struct StatCard: View {
    let icon: String
    let value: String
    let label: String
    let backgroundColor: Color
    let valueColor: Color
    
    var body: some View {
        VStack(spacing: 4) {
            Text(icon)
                .font(.system(size: 24))
            
            Text(value)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(valueColor)
            
            Text(label)
                .font(.system(size: 12))
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(16)
        .background(backgroundColor)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
    }
}
