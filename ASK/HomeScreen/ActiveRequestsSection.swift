//
//  ActiveRequestsSection.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore
import SwiftUI

struct ActiveRequestsSection: View {
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("सक्रिय अनुरोध")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.primary)
                
                Spacer()
                
                NavigationLink(destination: ActiveRequestsView()) {
                    Text("सभी देखें")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 0.098, green: 0.463, blue: 0.824))
                }
            }
            
            VStack(spacing: 8) {
                RequestCard(
                    icon: "🏥",
                    iconColor: Color(red: 0.098, green: 0.463, blue: 0.824),
                    title: "स्वास्थ्य सहायता",
                    requestId: "अनुरोध #ASK2024",
                    date: "15 जनवरी 2025, 10:30 AM",
                    status: "प्रगति में",
                    statusColor: Color(red: 0.129, green: 0.588, blue: 0.953),
                    statusBackgroundColor: Color(red: 0.129, green: 0.588, blue: 0.953).opacity(0.2)
                )
                
                RequestCard(
                    icon: "⚖️",
                    iconColor: Color(red: 0.482, green: 0.122, blue: 0.635),
                    title: "कानूनी सहायता",
                    requestId: "अनुरोध #ASK2025",
                    date: "16 जनवरी 2025, 2:15 PM",
                    status: "लंबित",
                    statusColor: Color(red: 1.0, green: 0.596, blue: 0.0),
                    statusBackgroundColor: Color(red: 1.0, green: 0.596, blue: 0.0).opacity(0.2)
                )
            }
        }
    }
}
