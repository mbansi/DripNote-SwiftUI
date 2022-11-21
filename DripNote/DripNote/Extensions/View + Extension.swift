//
//  View + Extension.swift
//  DripNote
//
//  Created by Bansi Mamtora on 21/11/22.
//

import SwiftUI

extension View {
    
    // MARK: - Custom Buttons
    func filledBackground(backgroundColor: Color, textColor: Color) -> some View {
        modifier(FilledRoundCorneredButton(backgroundColor: backgroundColor, textColor: textColor))
    }
    
    func plainButton(textColor: Color) -> some View {
        modifier(PlainButton(textColor: textColor))
    }
    
    // MARK: - Text
    func setupAuthenticationTextTitle() -> some View {
        modifier(AuthenticationTextTitle())
    }
    
    func setupCardView() -> some View {
        modifier(CardView())
    }
}




