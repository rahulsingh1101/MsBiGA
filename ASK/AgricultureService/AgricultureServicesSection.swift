//
//  AgricultureServicesSection.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct AgricultureServicesSection: View {
    let services = [
        ("🌱", "फसल सलाह", "मौसम आधारित खेती सलाह, बीज चयन व उर्वरक मार्गदर्शन", Color(red: 0.910, green: 0.961, blue: 0.914)),
        ("💰", "किसान योजनाएं", "PM-किसान, फसल बीमा, सब्सिडी व ऋण योजनाएं", Color(red: 0.89, green: 0.949, blue: 0.992)),
        ("🔬", "मिट्टी परीक्षण", "मुफ्त मिट्टी जांच व सॉयल हेल्थ कार्ड", Color(red: 1.0, green: 0.949, blue: 0.878)),
        ("🚜", "कृषि उपकरण", "ट्रैक्टर, हार्वेस्टर किराये पर व सब्सिडी जानकारी", Color(red: 0.988, green: 0.898, blue: 0.925)),
        ("🏪", "मंडी व विपणन", "नजदीकी मंडी, भाव व सीधी बिक्री के अवसर", Color(red: 0.953, green: 0.898, blue: 0.961)),
        ("🛡️", "फसल बीमा", "प्रधानमंत्री फसल बीमा योजना व क्लेम सहायता", Color(red: 0.878, green: 0.949, blue: 0.941))
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("कृषि सेवाएं")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.primary)
                .padding(.horizontal, 16)
            
            VStack(spacing: 12) {
                ForEach(services.indices, id: \.self) { index in
                    AgricultureServiceCard(
                        icon: services[index].0,
                        title: services[index].1,
                        description: services[index].2,
                        backgroundColor: services[index].3
                    )
                }
            }
            .padding(.horizontal, 16)
        }
    }
}
