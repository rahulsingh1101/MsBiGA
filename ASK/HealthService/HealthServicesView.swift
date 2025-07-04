//
//  HealthServicesView.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct HealthServicesView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Custom Header
                HealthHeaderView(presentationMode: presentationMode)
                
                // Content
                ScrollView {
                    VStack(spacing: 16) {
                        // Emergency Banner
                        EmergencyBanner()
                        
                        // Quick Actions
                        HealthQuickActions()
                        
                        // Stats Info
                        HealthStatsInfo()
                        
                        // Health Categories
                        HealthCategoriesSection()
                        
                        // Help Section
                        HealthHelpSection()
                    }
                    .padding(.bottom, 100)
                }
            }
        }
        .navigationBarHidden(true)
    }
}
