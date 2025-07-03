//
//  RequestCard.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore

struct RequestCard: View {
    let icon: String
    let iconColor: Color
    let title: String
    let requestId: String
    let date: String
    let status: String
    let statusColor: Color
    let statusBackgroundColor: Color
    
    var body: some View {
        HStack(spacing: 16) {
            // Icon
            ZStack {
                Circle()
                    .fill(iconColor)
                    .frame(width: 48, height: 48)
                
                Text(icon)
                    .font(.system(size: 24))
            }
            
            // Details
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.primary)
                
                Text(requestId)
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                
                Text(date)
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            // Status
            Text(status)
                .font(.system(size: 11, weight: .medium))
                .foregroundColor(statusColor)
                .padding(.horizontal, 12)
                .padding(.vertical, 4)
                .background(statusBackgroundColor)
                .cornerRadius(12)
        }
        .padding(16)
        .background(Color(red: 0.882, green: 0.961, blue: 0.996))
        .cornerRadius(12)
    }
}
