//
//  HealthCategoriesSection.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct HealthCategoriesSection: View {
    let categories = [
        ("🏥", "अस्पताल खोजें", "सरकारी व निजी अस्पताल, उनकी सुविधाएं और संपर्क जानकारी", Color(red: 0.89, green: 0.949, blue: 0.992)),
        ("👨‍⚕️", "डॉक्टर से मिलें", "विशेषज्ञ डॉक्टर खोजें और अपॉइंटमेंट बुक करें", Color(red: 0.953, green: 0.898, blue: 0.961)),
        ("💊", "दवा व मेडिकल स्टोर", "दवाओं की जानकारी, कीमत और नजदीकी मेडिकल स्टोर", Color(red: 0.910, green: 0.961, blue: 0.914)),
        ("🔬", "लैब टेस्ट व जांच", "पैथोलॉजी लैब, एक्स-रे, अल्ट्रासाउंड आदि", Color(red: 1.0, green: 0.949, blue: 0.878)),
        ("🛡️", "स्वास्थ्य बीमा", "आयुष्मान भारत व अन्य बीमा योजनाएं", Color(red: 0.988, green: 0.898, blue: 0.925)),
        ("🚑", "एम्बुलेंस सेवा", "आपातकालीन वाहन सेवा - 24x7 उपलब्ध", Color(red: 1.0, green: 0.922, blue: 0.933))
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("स्वास्थ्य सेवाएं")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.primary)
                .padding(.horizontal, 16)
            
            VStack(spacing: 12) {
                ForEach(categories.indices, id: \.self) { index in
                    HealthCategoryCard(
                        icon: categories[index].0,
                        title: categories[index].1,
                        description: categories[index].2,
                        backgroundColor: categories[index].3
                    )
                }
            }
            .padding(.horizontal, 16)
        }
    }
}
