//
//  VerifyPhoneNumberView.swift
//  DripNote
//
//  Created by Bansi Mamtora on 21/11/22.
//

import SwiftUI

class OTPCodeModel: ObservableObject {
    var limit: Int = 1
    
    @Published var otp: String = "" {
        didSet {
            if otp.count > limit {
                otp = String(otp.prefix(limit))
            }
        }
    }
}

struct AuthenticationContainerView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 50) {
                Spacer()
                Text("Verify your \n number.")
                    .setupAuthenticationTextTitle()
                VStack(spacing: 35) {
                    Spacer()
                    Text("ENTER YOUR CODE".uppercased())
                        .font(.custom("NiveauGroteskBold", size: 16))
                    HStack(spacing: 12){
                        OTPTextField()
                        OTPTextField()
                        OTPTextField()
                        OTPTextField()
                    }
                    Text("Enter the 4 digit code we sent you to verify your account.")
                        .font(.custom("NiveauGroteskBold", size: 16))
                        .foregroundColor(Color("LightGrayColor"))
                        .lineLimit(2)
                        .padding(.horizontal, 15)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Spacer()
                }
                .padding(.horizontal,30)
                .background(Color.white)
                .cornerRadius(15)
                .setupCardView()
                .padding(15)
                Spacer()
                Spacer()
                Spacer()
            }
        }
        .background(Color("DefaultBackgroundColor"))
    }
}

struct OTPTextField: View {
    
    var validBorderColor = Color("ValidOTPBorderColor")
    var errorBorderColor = Color("ErrorOTPBorderColor")
    
    @ObservedObject private var otpCodeModel = OTPCodeModel()
    
    var body: some View {
        HStack {
            TextField("", text: $otpCodeModel.otp)
                .padding()
                .keyboardType(.numberPad)
                .overlay(RoundedRectangle(cornerRadius: 2).stroke(Color("LightGrayColor"), lineWidth: 1))
                .font(.custom("Montserrat-Bold", size: 22))
                .multilineTextAlignment(.center)
        }
        
    }
    
}

struct AuthenticationTextTitle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.custom("NiveauGroteskBold", size: 32))
            .foregroundColor(Color("CornflowerColor"))
            .fixedSize(horizontal: false, vertical: true)
            .lineLimit(2)
            .multilineTextAlignment(.center)
    }
}

struct VerifyPhoneNumberView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationContainerView()
    }
}
