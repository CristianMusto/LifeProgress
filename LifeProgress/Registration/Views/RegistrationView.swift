//
//  SwiftUIView.swift
//  LifeProgress
//
//  Created by Kriis Musto on 04/04/24.
//

import SwiftUI
import Firebase

struct RegistrationView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var startAnimation: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(GeneralUtils.secondaryColor),
                    Color(GeneralUtils.primaryColor)
                ],
                startPoint: startAnimation ? .topLeading : .bottomLeading,
                endPoint: startAnimation ? .bottomTrailing : .topTrailing
            )
            // Animation to toggle the gradient colors
            .onAppear {
                withAnimation(.easeInOut(duration: 2.75)) {
                    startAnimation.toggle()
                }
            }
            .ignoresSafeArea()
            .overlay(Color(GeneralUtils.primaryColor).opacity(0.5))
            
            VStack {
                
                Spacer()
                
                VStack {
                    Text("Hi, Welcome back.")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 2.5)
                        .foregroundStyle(Color(GeneralUtils.accentColor))
                    
                    Text("Ready to start climbing again?")
                        .font(.headline)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 5)
                        .foregroundStyle(Color(GeneralUtils.accentColor))
                    
                    Text("Enter your email and password to sign in.")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 2.5)
                        .foregroundStyle(Color(GeneralUtils.accentColor))
                }
                
                Spacer()
                
                TextField("", text: $email, prompt: Text("Email")
                    .foregroundStyle(Color(GeneralUtils.secondaryColor)))
                    .padding()
                    .background(Color(GeneralUtils.accentColor))
                    .clipShape(.capsule)
                    .padding(.all, 2.5)
                    .foregroundStyle(Color(GeneralUtils.primaryColor))
                
                TextField("", text: $password, prompt: Text("Password")
                    .foregroundStyle(Color(GeneralUtils.secondaryColor)))
                    .padding()
                    .background(Color(GeneralUtils.accentColor))
                    .clipShape(.capsule)
                    .padding(.all, 2.5)
                    .foregroundStyle(Color(GeneralUtils.primaryColor))
                
                Spacer()
                
                Button("Sign Up", action: {
                    
                })
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(GeneralUtils.secondaryColor))
                .cornerRadius(100)
                .padding(.all, 2.5)
                .foregroundStyle(Color(GeneralUtils.accentColor))
                .font(.headline)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                
            }
            .padding()
        }
    }
}

#Preview {
    RegistrationView()
}
