//
//  EmergencyCard.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore

struct EmergencyCard: View {
    var body: some View {
        HStack(spacing: 16) {
            Text("📞")
                .font(.system(size: 32))
                .foregroundColor(Color(red: 0.898, green: 0.224, blue: 0.208))
            
            VStack(alignment: .leading, spacing: 4) {
                Text("24x7 आपातकालीन सहायता")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Color(red: 0.898, green: 0.224, blue: 0.208))
                
                Text("📞 9288012121")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(.primary)
            }
            
            Spacer()
        }
        .padding(16)
        .background(Color(red: 1.0, green: 0.922, blue: 0.933))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(red: 0.898, green: 0.224, blue: 0.208), lineWidth: 1)
        )
        .cornerRadius(12)
    }
}
