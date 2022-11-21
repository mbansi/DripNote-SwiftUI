//
//  SignUpView.swift
//  DripNote
//
//  Created by Bansi Mamtora on 21/11/22.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        ZStack {
            NavigationView {
                VStack(spacing: 15) {
                    Spacer()
                    Image("DripNoteLogo")
                    Text("Drip note".uppercased())
                        .font(.custom("NiveauGroteskBold", size: 50))
                        .foregroundColor(Color("CornflowerColor"))
                        .kerning(5)
                    VStack(spacing: 10) {
                        Text("Repetition builds brain power.")
                            .font(.custom("Montserrat-Thin", fixedSize: 16))
                            .foregroundColor(.black)
                        Text("Make it easy with automation.")
                            .font(.custom("Montserrat-Thin", fixedSize: 16))
                            .foregroundColor(.black)
                    }
                    Spacer()
                    VStack(spacing: 25) {
                        VStack(spacing: 15) {
                            Button {
                                print("Sign up pressed")
                            } label: {
                                Text("Sign Up".uppercased())
                                .filledBackground(backgroundColor: Color("CornflowerColor"), textColor: .white)
                            }
                            Button {
                                print("Sign up pressed")
                            } label: {
                                Text("Log in".uppercased())
                                    .filledBackground(backgroundColor: .white, textColor: Color("CornflowerColor"))
                            }
                        }
                        Button("Forgot password".uppercased()) {
                            print("Forgot pressed")
                        }
                        .plainButton(textColor: Color("LightGrayColor"))
                    }
                    .padding(.horizontal,30)
                }
            }
            .background(Color("DefaultBackgorundColor"))
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
