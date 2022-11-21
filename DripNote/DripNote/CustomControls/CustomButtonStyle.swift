//
//  DefaultFilledButton.swift
//  DripNote
//
//  Created by Bansi Mamtora on 21/11/22.
//

import SwiftUI

struct FilledRoundCorneredButton: ViewModifier {
    var backgroundColor: Color
    var textColor: Color
    
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(textColor)
            .font(.custom("NiveauGroteskBold", size: 14))
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(30)
            .shadow(color: .black.opacity(0.3), radius: 8,y: 2)
    }
}

struct PlainButton: ViewModifier {
    var textColor: Color
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(textColor)
            .font(.custom("NiveauGroteskBold", size: 14))
    }
}

