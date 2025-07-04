//
//  HealthQuickActions.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct HealthQuickActions: View {
    let actions = [
        ("🏥", "नजदीकी अस्पताल", "तुरंत खोजें"),
        ("👨‍⚕️", "डॉक्टर परामर्श", "ऑनलाइन/ऑफलाइन"),
        ("💊", "दवा जानकारी", "कीमत व उपलब्धता"),
        ("🩺", "जांच बुकिंग", "लैब टेस्ट")
    ]
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 12) {
            ForEach(actions.indices, id: \.self) { index in
                VStack(spacing: 8) {
                    Text(actions[index].0)
                        .font(.system(size: 32))
                    
                    Text(actions[index].1)
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.primary)
                    
                    Text(actions[index].2)
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
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
