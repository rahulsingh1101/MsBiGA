//
//  JobCard.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct JobCard: View {
    let title: String
    let company: String
    let type: String
    let location: String
    let qualification: String
    let positions: String
    let salary: String
    let deadline: String
    let isGovernment: Bool
    
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.primary)
                    
                    Text(company)
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Text(type)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(isGovernment ? Color(red: 0.098, green: 0.463, blue: 0.824) : Color(red: 0.482, green: 0.122, blue: 0.635))
                    .padding(.horizontal, 12)
                    .padding(.vertical, 4)
                    .background(isGovernment ? Color(red: 0.89, green: 0.949, blue: 0.992) : Color(red: 0.953, green: 0.898, blue: 0.961))
                    .cornerRadius(12)
            }
            
            HStack(spacing: 16) {
                HStack(spacing: 4) {
                    Text("📍")
                    Text(location)
                }
                
                HStack(spacing: 4) {
                    Text("🎓")
                    Text(qualification)
                }
                
                HStack(spacing: 4) {
                    Text("👥")
                    Text(positions)
                }
            }
            .font(.system(size: 13))
            .foregroundColor(.secondary)
            
            HStack {
                Text(salary)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color(red: 0.184, green: 0.490, blue: 0.196))
                
                Spacer()
                
                Text(deadline)
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 0.957, green: 0.263, blue: 0.212))
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
