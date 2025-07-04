//
//  FilterChip.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore
import SwiftUI

struct SchemesFilterChip: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 13))
                .foregroundColor(isSelected ? .white : .primary)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(
                    isSelected ?
                    Color(red: 0.0, green: 0.475, blue: 0.420) :
                    Color.white
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(
                            isSelected ?
                            Color(red: 0.0, green: 0.475, blue: 0.420) :
                            Color(.systemGray4),
                            lineWidth: 1
                        )
                )
                .cornerRadius(20)
        }
    }
}
