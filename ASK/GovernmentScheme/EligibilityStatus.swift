//
//  EligibilityStatus.swift
//  ASK
//
//  Created by Rahul Singh on 03/07/25.
//

enum EligibilityStatus {
    case eligible
    case checkRequired
    
    var icon: String {
        switch self {
        case .eligible: return "✓"
        case .checkRequired: return "?"
        }
    }
    
    var text: String {
        switch self {
        case .eligible: return "आप पात्र हो सकते हैं"
        case .checkRequired: return "पात्रता जांचें"
        }
    }
}
