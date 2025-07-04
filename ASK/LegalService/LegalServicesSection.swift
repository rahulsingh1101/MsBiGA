//
//  LegalServicesSection.swift
//  ASK
//
//  Created by Rahul Singh on 04/07/25.
//

import SwiftUICore
import SwiftUI

struct LegalServicesSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("कानूनी सेवाएं")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.primary)
                .padding(.horizontal, 16)
            
            VStack(spacing: 12) {
                LegalServiceCard(
                    icon: "👥",
                    title: "कानूनी परामर्श",
                    subtitle: "विशेषज्ञ वकीलों से सलाह",
                    features: [
                        "व्यक्तिगत व पारिवारिक मामले",
                        "संपत्ति व जमीन विवाद",
                        "उपभोक्ता शिकायतें"
                    ],
                    backgroundColor: Color(red: 0.953, green: 0.898, blue: 0.961)
                )
                
                LegalServiceCard(
                    icon: "📄",
                    title: "दस्तावेज़ तैयारी",
                    subtitle: "कानूनी कागजात बनवाएं",
                    features: [
                        "एफिडेविट व नोटरी",
                        "पावर ऑफ अटॉर्नी",
                        "कानूनी नोटिस"
                    ],
                    backgroundColor: Color(red: 0.910, green: 0.918, blue: 0.965)
                )
                
                LegalServiceCard(
                    icon: "🏛️",
                    title: "न्यायालय प्रतिनिधित्व",
                    subtitle: "कोर्ट में आपकी आवाज",
                    features: [
                        "सिविल व दीवानी मामले",
                        "आपराधिक मामले",
                        "पारिवारिक न्यायालय"
                    ],
                    backgroundColor: Color(red: 0.988, green: 0.898, blue: 0.925)
                )
                
                LegalServiceCard(
                    icon: "🤝",
                    title: "लोक अदालत",
                    subtitle: "त्वरित न्याय व समझौता",
                    features: [
                        "कम खर्च, जल्द निपटारा",
                        "आपसी सहमति से समाधान"
                    ],
                    backgroundColor: Color(red: 1.0, green: 0.949, blue: 0.878)
                )
            }
            .padding(.horizontal, 16)
        }
    }
}
