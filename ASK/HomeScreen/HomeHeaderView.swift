//
//  HeaderView.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore

struct HomeHeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("ASK - आनन्द सेवा केन्द्र")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(Color(red: 0.098, green: 0.463, blue: 0.824))
                
                Text("आपके हर सवाल का सच्चा साथी")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            HStack(spacing: 12) {
                // Notification Icon
                ZStack {
                    Text("🔔")
                        .font(.system(size: 24))
                    
                    // Notification Badge
                    Text("3")
                        .font(.system(size: 10, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 18, height: 18)
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(x: 8, y: -8)
                }
                
                // Profile Icon
                ZStack {
                    Circle()
                        .fill(Color(red: 0.098, green: 0.463, blue: 0.824))
                        .frame(width: 32, height: 32)
                    
                    Text("👤")
                        .font(.system(size: 16))
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(Color(red: 0.89, green: 0.949, blue: 0.992))
        .shadow(color: .black.opacity(0.1), radius: 2, y: 2)
    }
}
