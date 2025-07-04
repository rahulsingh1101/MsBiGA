//
//  ActiveRequestsView.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct ActiveRequestsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedFilter = "सभी (12)"
    
    let filters = ["सभी (12)", "सक्रिय (4)", "लंबित (2)", "पूर्ण (5)", "रद्द (1)"]
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Custom Header
                ActiveRequestsHeaderView(presentationMode: presentationMode)
                
                // Content
                ScrollView {
                    LazyVStack(spacing: 0) {
                        // Filter Section
                        RequestFilterSection(selectedFilter: $selectedFilter, filters: filters)
                        
                        // Request Count
                        Text("कुल 12 अनुरोध मिले")
                            .font(.system(size: 14))
                            .foregroundColor(.secondary)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 16)
                        
                        // Requests List
                        VStack(spacing: 12) {
                            ActiveRequestCard(
                                id: "#ASK20250115001",
                                type: "स्वास्थ्य सहायता",
                                date: "15 जनवरी 2025, 10:30 AM",
                                description: "डॉक्टर परामर्श की आवश्यकता - बुखार और सिरदर्द की समस्या",
                                metaItems: [("🏥", "सदर अस्पताल"), ("👨‍⚕️", "डॉ. राम कुमार")],
                                status: .progress,
                                assignedTo: "राज कुमार - सहायक",
                                agentInitials: "RK",
                                actionText: "विवरण देखें",
                                showTimeline: true,
                                timelineItems: [
                                    ("डॉक्टर से अपॉइंटमेंट बुक किया गया", "आज, 11:45 AM"),
                                    ("अनुरोध स्वीकार किया गया", "आज, 10:35 AM")
                                ]
                            )
                            
                            ActiveRequestCard(
                                id: "#ASK20250116002",
                                type: "कानूनी सहायता",
                                date: "16 जनवरी 2025, 2:15 PM",
                                description: "जमीन के कागजात सत्यापन और रजिस्ट्री में सहायता चाहिए",
                                metaItems: [("📄", "संपत्ति मामला"), ("📍", "बक्सर")],
                                status: .pending,
                                assignedTo: "सहायक नियुक्ति बाकी",
                                agentInitials: nil,
                                actionText: "विवरण देखें"
                            )
                            
                            ActiveRequestCard(
                                id: "#ASK20250110003",
                                type: "सरकारी योजना",
                                date: "10 जनवरी 2025, 9:00 AM",
                                description: "आयुष्मान कार्ड बनवाने में सहायता - सफलतापूर्वक पूर्ण",
                                metaItems: [("✅", "कार्ड जारी"), ("🗓️", "5 दिन में पूर्ण")],
                                status: .completed,
                                assignedTo: "सुमित्रा कुमारी - सहायक",
                                agentInitials: "SK",
                                actionText: "रेटिंग दें"
                            )
                            
                            ActiveRequestCard(
                                id: "#ASK20250114004",
                                type: "रोज़गार सहयोग",
                                date: "14 जनवरी 2025, 4:30 PM",
                                description: "रिज्यूमे बनवाना और जॉब अप्लाई करने में मदद",
                                metaItems: [("💼", "3 नौकरियों के लिए आवेदन")],
                                status: .progress,
                                assignedTo: "अनिल कुमार - सहायक",
                                agentInitials: "AK",
                                actionText: "विवरण देखें"
                            )
                            
                            ActiveRequestCard(
                                id: "#ASK20250112005",
                                type: "शिक्षा मार्गदर्शन",
                                date: "12 जनवरी 2025, 11:00 AM",
                                description: "छात्रवृत्ति फॉर्म भरने में सहायता - मैट्रिक छात्रवृत्ति",
                                metaItems: [("✅", "फॉर्म जमा"), ("💰", "₹12,000/वर्ष")],
                                status: .completed,
                                assignedTo: "प्रिया देवी - सहायक",
                                agentInitials: "PD",
                                actionText: "रेटिंग दें"
                            )
                        }
                        .padding(.horizontal, 16)
                        .padding(.bottom, 100)
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}
