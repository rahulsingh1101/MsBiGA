//
//  LegalServicesView.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct LegalServicesView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Custom Header
                LegalHeaderView(presentationMode: presentationMode)
                
                // Content
                ScrollView {
                    LazyVStack(spacing: 16) {
                        // Free Legal Aid Banner
                        FreeLegalAidBanner()
                        
                        // Quick Help
                        LegalQuickHelp()
                        
                        // Legal Services
                        LegalServicesSection()
                        
                        // Document Templates
                        DocumentTemplates()
                        
                        // Know Your Rights
                        KnowYourRights()
                        
                        // Bottom CTA
                        LegalBottomCTA()
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 100)
                }
            }
        }
        .navigationBarHidden(true)
    }
}
