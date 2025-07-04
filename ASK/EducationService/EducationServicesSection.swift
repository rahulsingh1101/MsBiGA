//
//  EducationServicesSection.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct EducationServicesSection: View {
    let services = [
        ("🏫", "स्कूल/कॉलेज प्रवेश", "सरकारी व निजी संस्थान, प्रवेश प्रक्रिया में सहायता", Color(red: 0.910, green: 0.961, blue: 0.914)),
        ("💭", "करियर काउंसलिंग", "विशेषज्ञों से मार्गदर्शन, सही करियर चुनाव", Color(red: 0.89, green: 0.949, blue: 0.992)),
        ("📝", "परीक्षा तैयारी", "प्रतियोगी परीक्षाओं की जानकारी व तैयारी", Color(red: 1.0, green: 0.949, blue: 0.878)),
        ("🛠️", "कौशल विकास", "व्यावसायिक प्रशिक्षण व सर्टिफिकेट कोर्स", Color(red: 0.988, green: 0.898, blue: 0.925)),
        ("📚", "डिजिटल लाइब्रेरी", "मुफ्त अध्ययन सामग्री व पुस्तकें", Color(red: 0.953, green: 0.898, blue: 0.961))
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("शिक्षा सेवाएं")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.primary)
                .padding(.horizontal, 16)
            
            VStack(spacing: 12) {
                ForEach(services.indices, id: \.self) { index in
                    EducationServiceCard(
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
