//
//  ServiceCard.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore
import SwiftUI

//struct ServiceCard: View {
//    let service: ServiceItem
//    
//    var body: some View {
//        VStack(spacing: 8) {
//            Text(service.icon)
//                .font(.system(size: 32))
//                .foregroundColor(service.iconColor)
//            
//            Text(service.name)
//                .font(.system(size: 11, weight: .medium))
//                .foregroundColor(.primary)
//                .multilineTextAlignment(.center)
//                .lineLimit(2)
//        }
//        .frame(height: 100)
//        .frame(maxWidth: .infinity)
//        .background(service.backgroundColor)
//        .cornerRadius(12)
//        .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
//    }
//}

struct ServiceCard: View {
    let service: ServiceItem
    let index: Int
    
    var body: some View {
        NavigationLink(destination: destinationView) {
            VStack(spacing: 8) {
                Text(service.icon)
                    .font(.system(size: 32))
                    .foregroundColor(service.iconColor)
                
                Text(service.name)
                    .font(.system(size: 11, weight: .medium))
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
            }
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            .background(service.backgroundColor)
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.05), radius: 2, y: 2)
        }
        .buttonStyle(PlainButtonStyle())
    }
    
    @ViewBuilder
    private var destinationView: some View {
        switch index {
        case 0: // स्वास्थ्य सहायता
            HealthServicesView()
        case 1: // कानूनी सहायता
            LegalServicesView()
        case 2: // शिक्षा मार्गदर्शन
            EducationServicesView()
        case 3: // रोज़गार सहयोग
            EmploymentServicesView()
        case 4: // सरकारी योजनाएं
            GovernmentSchemesView()
        case 5: // कृषि सहायता
            AgricultureServicesView()
        default:
            // For other services, show a placeholder view
            VStack {
                Text(service.icon)
                    .font(.system(size: 64))
                Text("यह सेवा जल्द ही उपलब्ध होगी")
                    .font(.title2)
                    .padding()
            }
            .navigationTitle(service.name.replacingOccurrences(of: "\n", with: " "))
        }
    }
}
