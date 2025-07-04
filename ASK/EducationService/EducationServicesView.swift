//
//  EducationServicesView.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct EducationServicesView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedLevel = "10वीं तक"
    
    let levels = ["10वीं तक", "12वीं", "स्नातक", "स्नातकोत्तर", "प्रतियोगी"]
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Custom Header
                EducationHeaderView(presentationMode: presentationMode)
                
                // Content
                ScrollView {
                    LazyVStack(spacing: 16) {
                        // Student Level Selector
                        StudentLevelSelector(selectedLevel: $selectedLevel, levels: levels)
                        
                        // Scholarship Banner
                        ScholarshipBanner()
                        
                        // Career Paths
                        CareerPaths()
                        
                        // Education Services
                        EducationServicesSection()
                        
                        // Upcoming Exams
                        UpcomingExams()
                        
                        // Study Resources
                        StudyResources()
                        
                        // Bottom Help
                        EducationBottomHelp()
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 100)
                }
            }
        }
        .navigationBarHidden(true)
    }
}
