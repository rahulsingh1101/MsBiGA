//
//  EmploymentQuickActions.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct EmploymentQuickActions: View {
    let actions = [
        ("📄", "रिज्यूमे बनाएं"),
        ("🎯", "जॉब अलर्ट"),
        ("📚", "इंटरव्यू तैयारी")
    ]
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 12) {
            ForEach(actions.indices, id: \.self) { index in
                VStack(spacing: 8) {
                    Text(actions[index].0)
                        .font(.system(size: 28))
                    
                    Text(actions[index].1)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .padding(16)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
            }
        }
        .padding(.horizontal, 16)
    }
}
