//
//  EmergencyBanner.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct EmergencyBanner: View {
    var body: some View {
        HStack(spacing: 12) {
            Text("🚨")
                .font(.system(size: 32))
            
            VStack(alignment: .leading, spacing: 4) {
                Text("आपातकालीन सहायता")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color(red: 0.827, green: 0.184, blue: 0.184))
                
                Text("📞 108 / 102")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color(red: 0.827, green: 0.184, blue: 0.184))
            }
            
            Spacer()
            
            Text("📞")
                .font(.system(size: 20))
        }
        .padding(16)
        .background(Color(red: 1.0, green: 0.922, blue: 0.933))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(red: 0.937, green: 0.325, blue: 0.314), lineWidth: 1)
        )
        .cornerRadius(12)
        .padding(.horizontal, 16)
    }
}
