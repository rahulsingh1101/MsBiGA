//
//  LegalQuickHelp.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct LegalQuickHelp: View {
    let quickHelps = [
        ("📝", "शिकायत दर्ज"),
        ("👨‍⚖️", "वकील खोजें"),
        ("📋", "दस्तावेज़"),
        ("🏛️", "कोर्ट जानकारी"),
        ("📚", "कानूनी अधिकार"),
        ("💬", "परामर्श")
    ]
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 12) {
            ForEach(quickHelps.indices, id: \.self) { index in
                VStack(spacing: 8) {
                    Text(quickHelps[index].0)
                        .font(.system(size: 28))
                    
                    Text(quickHelps[index].1)
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
