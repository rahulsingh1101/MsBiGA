//
//  EmploymentServicesView.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct EmploymentServicesView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedFilter = "सभी नौकरियां"
    @State private var searchText = ""
    
    let filters = ["सभी नौकरियां", "सरकारी", "निजी", "पार्ट टाइम", "फ्रेशर"]
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Custom Header
                EmploymentHeaderView(presentationMode: presentationMode)
                
                // Content
                ScrollView {
                    LazyVStack(spacing: 16) {
                        // Job Search Bar
                        JobSearchBar(searchText: $searchText, selectedFilter: $selectedFilter, filters: filters)
                        
                        // Stats Row
                        EmploymentStatsRow()
                        
                        // Quick Actions
                        EmploymentQuickActions()
                        
                        // Latest Jobs
                        LatestJobsSection()
                        
                        // Self Employment Banner
                        SelfEmploymentBanner()
                        
                        // Employment Services
                        EmploymentServicesGrid()
                        
                        // Skill Training
                        SkillTraining()
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 100)
                }
            }
        }
        .navigationBarHidden(true)
    }
}
