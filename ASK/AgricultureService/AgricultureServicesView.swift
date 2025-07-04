//
//  AgricultureServicesView.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct AgricultureServicesView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedMonth = "जनवरी"
    
    let months = ["जनवरी", "फरवरी", "मार्च", "अप्रैल"]
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Custom Header
                AgricultureHeaderView(presentationMode: presentationMode)
                
                // Content
                ScrollView {
                    LazyVStack(spacing: 16) {
                        // Weather Widget
                        WeatherWidget()
                        
                        // Quick Info Cards
                        AgricultureQuickInfo()
                        
                        // Mandi Prices
                        MandiPrices()
                        
                        // Agriculture Services
                        AgricultureServicesSection()
                        
                        // Expert Consultation
                        ExpertConsultation()
                        
                        // Crop Calendar
                        CropCalendar(selectedMonth: $selectedMonth, months: months)
                        
                        // Help Numbers
                        HelpNumbers()
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 100)
                }
            }
        }
        .navigationBarHidden(true)
    }
}
