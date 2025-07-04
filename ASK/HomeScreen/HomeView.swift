//
//  HomeView.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore
import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // App Header
                HomeHeaderView()
                
                // Content
                VStack(spacing: 16) {
                    // Welcome Section
                    WelcomeCard()
                    
                    // Stats Section
                    StatsSection()
                    
                    // Services Section
                    ServicesSection()
                    
                    // Active Requests
                    ActiveRequestsSection()
                    
                    // Emergency Contact
                    EmergencyCard()
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 20)
                .padding(.top, 16)
            }
        }
        .background(Color(UIColor.systemGroupedBackground))
        .navigationBarHidden(true)
    }
}
