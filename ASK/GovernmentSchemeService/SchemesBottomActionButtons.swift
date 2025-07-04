//
//  BottomActionButtons.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore
import SwiftUI

struct SchemesBottomActionButtons: View {
    var body: some View {
        HStack(spacing: 12) {
            Button(action: {
                // Handle help action
            }) {
                HStack(spacing: 8) {
                    Text("💬")
                    Text("सहायता चाहिए?")
                }
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color(red: 0.0, green: 0.475, blue: 0.420))
                .frame(maxWidth: .infinity)
                .padding(14)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(red: 0.0, green: 0.475, blue: 0.420), lineWidth: 2)
                )
                .cornerRadius(12)
            }
            
            Button(action: {
                // Handle eligibility check action
            }) {
                HStack(spacing: 8) {
                    Text("📋")
                    Text("पात्रता जांचें")
                }
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding(14)
                .background(Color(red: 0.0, green: 0.475, blue: 0.420))
                .cornerRadius(12)
            }
        }
        .padding(16)
        .background(Color.white)
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(.systemGray5)),
            alignment: .top
        )
    }
}
