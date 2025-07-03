//
//  SchemeCard.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore
import SwiftUI

struct SchemeCard: View {
    let title: String
    let ministry: String
    let description: String
    let tags: [String]
    let benefits: [String]
    let status: SchemeStatus
    let eligibility: EligibilityStatus
    let buttonText: String
    
    var body: some View {
        VStack(spacing: 12) {
            // Header Row
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.primary)
                    
                    Text(ministry)
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                // Status Badge
                Text(status.title)
                    .font(.system(size: 11, weight: .medium))
                    .foregroundColor(status.textColor)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 4)
                    .background(status.backgroundColor)
                    .cornerRadius(16)
            }
            
            // Description
            Text(description)
                .font(.system(size: 13))
                .foregroundColor(.secondary)
                .lineLimit(3)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            // Tags
            HStack {
                ForEach(tags, id: \.self) { tag in
                    Text(tag)
                        .font(.system(size: 11))
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                }
                Spacer()
            }
            
            // Benefits
            VStack(spacing: 8) {
                HStack {
                    Text("मुख्य लाभ:")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(Color(red: 0.0, green: 0.475, blue: 0.420))
                    Spacer()
                }
                
                ForEach(benefits, id: \.self) { benefit in
                    HStack(spacing: 8) {
                        Text("✓")
                            .font(.system(size: 12))
                            .foregroundColor(.green)
                        
                        Text(benefit)
                            .font(.system(size: 12))
                            .foregroundColor(.secondary)
                        
                        Spacer()
                    }
                }
            }
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            
            // Action Row
            HStack {
                HStack(spacing: 8) {
                    Text(eligibility.icon)
                        .font(.system(size: 13))
                    
                    Text(eligibility.text)
                        .font(.system(size: 13, weight: .medium))
                        .foregroundColor(Color(red: 0.0, green: 0.475, blue: 0.420))
                }
                
                Spacer()
                
                Button(action: {
                    // Handle apply action
                }) {
                    Text(buttonText)
                        .font(.system(size: 13, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Color(red: 0.0, green: 0.475, blue: 0.420))
                        .cornerRadius(8)
                }
            }
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
    }
}
