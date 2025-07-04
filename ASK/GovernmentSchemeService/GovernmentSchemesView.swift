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
        ZStack {
            Color(UIColor.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Custom Header
                GovernmentSchemesHeaderView(presentationMode: presentationMode)
                
                // Content
                ScrollView {
                    LazyVStack(spacing: 16) {
                        // Search Section
                        SchemesSearchSection(searchText: $searchText)
                        
                        // Filter Chips
                        SchemesFilterChipsSection(selectedFilter: $selectedFilter, filters: filters)
                        
                        // Info Banner
                        SchemesInfoBanner()
                        
                        // Schemes Section
                        SchemesSectionContent()
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 100)
                }
            }
            
            // Bottom Action Buttons
            VStack {
                Spacer()
                SchemesBottomActionButtons()
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}
