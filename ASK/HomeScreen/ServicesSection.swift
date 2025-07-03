//
//  ServicesSection.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

import SwiftUICore
import SwiftUI

struct ServicesSection: View {
    let services = [
        ServiceItem(icon: "🏥", name: "स्वास्थ्य\nसहायता", backgroundColor: Color(red: 0.89, green: 0.949, blue: 0.992), iconColor: Color(red: 0.098, green: 0.463, blue: 0.824)),
        ServiceItem(icon: "⚖️", name: "कानूनी\nसहायता", backgroundColor: Color(red: 0.953, green: 0.898, blue: 0.961), iconColor: Color(red: 0.482, green: 0.122, blue: 0.635)),
        ServiceItem(icon: "🎓", name: "शिक्षा\nमार्गदर्शन", backgroundColor: Color(red: 0.910, green: 0.961, blue: 0.914), iconColor: Color(red: 0.220, green: 0.557, blue: 0.235)),
        ServiceItem(icon: "💼", name: "रोज़गार\nसहयोग", backgroundColor: Color(red: 1.0, green: 0.949, blue: 0.878), iconColor: Color(red: 0.961, green: 0.486, blue: 0.0)),
        ServiceItem(icon: "🏛️", name: "सरकारी\nयोजनाएं", backgroundColor: Color(red: 0.878, green: 0.949, blue: 0.941), iconColor: Color(red: 0.0, green: 0.475, blue: 0.420)),
        ServiceItem(icon: "🌾", name: "कृषि\nसहायता", backgroundColor: Color(red: 0.945, green: 0.973, blue: 0.914), iconColor: Color(red: 0.408, green: 0.624, blue: 0.220))
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("हमारी सेवाएं")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.primary)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 12) {
                ForEach(services.indices, id: \.self) { index in
                    ServiceCard(service: services[index], index: index)
                }
            }
        }
    }
}
