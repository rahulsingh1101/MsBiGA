//
//  LegalServiceCard.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct LegalServiceCard: View {
    let icon: String
    let title: String
    let subtitle: String
    let features: [String]
    let backgroundColor: Color
    
    var body: some View {
        VStack(spacing: 12) {
            HStack(spacing: 16) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(backgroundColor)
                        .frame(width: 48, height: 48)
                    
                    Text(icon)
                        .font(.system(size: 24))
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.primary)
                    
                    Text(subtitle)
                        .font(.system(size: 13))
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            
            VStack(spacing: 6) {
                ForEach(features, id: \.self) { feature in
                    HStack(spacing: 8) {
                        Text("✓")
                            .font(.system(size: 13))
                            .foregroundColor(Color(red: 0.482, green: 0.122, blue: 0.635))
                        
                        Text(feature)
                            .font(.system(size: 13))
                            .foregroundColor(.primary)
                        
                        Spacer()
                    }
                }
            }
            .padding(.top, 12)
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color(.systemGray5)),
                alignment: .top
            )
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
    }
}
