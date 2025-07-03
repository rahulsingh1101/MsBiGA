//
//  StatsSection.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore

struct StatsSection: View {
    var body: some View {
        HStack(spacing: 8) {
            StatCard(
                icon: "📋",
                value: "12",
                label: "कुल अनुरोध",
                backgroundColor: Color(red: 0.098, green: 0.463, blue: 0.824).opacity(0.1),
                valueColor: Color(red: 0.098, green: 0.463, blue: 0.824)
            )
            
            StatCard(
                icon: "✅",
                value: "8",
                label: "पूर्ण हुए",
                backgroundColor: Color(red: 0.298, green: 0.686, blue: 0.314).opacity(0.1),
                valueColor: Color(red: 0.298, green: 0.686, blue: 0.314)
            )
            
            StatCard(
                icon: "⏳",
                value: "4",
                label: "प्रगति में",
                backgroundColor: Color(red: 1.0, green: 0.596, blue: 0.0).opacity(0.1),
                valueColor: Color(red: 1.0, green: 0.596, blue: 0.0)
            )
        }
    }
}
