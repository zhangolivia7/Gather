import SwiftUI

extension Color {
    // MARK: - Primary Colors
    static let gatherBlue = Color(red: 0.1, green: 0.2, blue: 0.4)
    static let gatherLightBlue = Color(red: 0.7, green: 0.85, blue: 1.0)
    static let gatherBackgroundBlue = Color(red: 0.85, green: 0.92, blue: 1.0)
    
    // MARK: - Secondary Colors
    static let gatherGrey = Color(red: 0.4, green: 0.4, blue: 0.4)
    static let gatherLightGrey = Color(red: 0.6, green: 0.6, blue: 0.6)
    static let gatherBackgroundGrey = Color(red: 0.9, green: 0.9, blue: 0.9)
    
    // MARK: - Accent Colors
    static let gatherMatch = Color.blue
    static let gatherPass = Color(red: 0.6, green: 0.6, blue: 0.6)
    
    // MARK: - Text Colors
    static let gatherPrimaryText = Color(red: 0.1, green: 0.2, blue: 0.4)
    static let gatherSecondaryText = Color(red: 0.4, green: 0.4, blue: 0.4)
    static let gatherWhiteText = Color.white
    
    // MARK: - Background Colors
    static let gatherCardBackground = Color.white
    static let gatherOverlayBackground = Color.white.opacity(0.3)
}

// MARK: - Color Palette Documentation
/*
 Gather App Color Palette:
 
 Primary Colors:
 - gatherBlue: Main brand color for headers, selected states
 - gatherLightBlue: Lighter blue for gradients
 - gatherBackgroundBlue: Background gradient color
 
 Secondary Colors:
 - gatherGrey: Secondary text and unselected states
 - gatherLightGrey: Pass button background
 - gatherBackgroundGrey: Unselected segmented control background
 
 Accent Colors:
 - gatherMatch: Heart/like button color
 - gatherPass: X/pass button color
 
 Text Colors:
 - gatherPrimaryText: Main text color
 - gatherSecondaryText: Secondary text color
 - gatherWhiteText: Text on dark backgrounds
 
 Background Colors:
 - gatherCardBackground: Card and tab bar backgrounds
 - gatherOverlayBackground: Semi-transparent overlays
 */
