//
//  GovernmentSchemesView.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore
import SwiftUI

struct GovernmentSchemesView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var searchText = ""
    @State private var selectedFilter = "सभी योजनाएं"
    
    let filters = ["सभी योजनाएं", "महिला", "किसान", "युवा", "वरिष्ठ नागरिक", "SC/ST", "शिक्षा"]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor.systemGroupedBackground)
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    // Custom Header
                    GovernmentSchemesHeaderView(presentationMode: presentationMode)
                    
                    // Content
                    ScrollView {
                        VStack(spacing: 16) {
                            // Search Section
                            SearchSection(searchText: $searchText)
                            
                            // Filter Chips
                            FilterChipsSection(selectedFilter: $selectedFilter, filters: filters)
                            
                            // Info Banner
                            InfoBanner()
                            
                            // Schemes Section
                            SchemesSection()
                        }
                        .padding(.bottom, 100) // Space for bottom buttons
                    }
                }
                
                // Bottom Action Buttons
                VStack {
                    Spacer()
                    BottomActionButtons()
                }
            }
        }
        .navigationBarHidden(true)
    }
}
