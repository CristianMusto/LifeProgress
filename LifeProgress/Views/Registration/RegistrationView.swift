//
//  SwiftUIView.swift
//  LifeProgress
//
//  Created by Kriis Musto on 04/04/24.
//

import SwiftUI
import Firebase

struct RegistrationView: View {
    
    @State private var name: String = ""
    @State private var lastName: String = ""
    @State private var job: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var startAnimation: Bool = false
    @State private var isRegistered: Bool = false
    
    
    var body: some View {
        NavigationStack {
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
                        
                        Text("Ready to start climbing in life?")
                            .font(.headline)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 5)
                            .foregroundStyle(Color(GeneralUtils.accentColor))
                        
                        Text("Enter your credentials to sign in.")
                            .font(.subheadline)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 2.5)
                            .foregroundStyle(Color(GeneralUtils.accentColor))
                    }
                    
                    Spacer()
                    
                    VStack {
                        
                        HStack {
                            TextField("", text: $name, prompt: Text("Name")
                                .foregroundStyle(Color(GeneralUtils.secondaryColor)))
                            .padding()
                            .background(Color(GeneralUtils.accentColor))
                            .clipShape(.capsule)
                            .padding(.all, 2.5)
                            .foregroundStyle(Color(GeneralUtils.primaryColor))
                            
                            TextField("", text: $lastName, prompt: Text("Last Name")
                                .foregroundStyle(Color(GeneralUtils.secondaryColor)))
                            .padding()
                            .background(Color(GeneralUtils.accentColor))
                            .clipShape(.capsule)
                            .padding(.all, 2.5)
                            .foregroundStyle(Color(GeneralUtils.primaryColor))
                        }
                        
                        TextField("", text: $job, prompt: Text("Job title")
                            .foregroundStyle(Color(GeneralUtils.secondaryColor)))
                        .padding()
                        .background(Color(GeneralUtils.accentColor))
                        .clipShape(.capsule)
                        .padding(.all, 2.5)
                        .foregroundStyle(Color(GeneralUtils.primaryColor))
                        
                        TextField("", text: $email, prompt: Text("Email")
                            .foregroundStyle(Color(GeneralUtils.secondaryColor)))
                        .padding()
                        .background(Color(GeneralUtils.accentColor))
                        .clipShape(.capsule)
                        .padding(.all, 2.5)
                        .foregroundStyle(Color(GeneralUtils.primaryColor))
                        
                        SecureField("", text: $password, prompt: Text("Password")
                            .foregroundStyle(Color(GeneralUtils.secondaryColor)))
                        .padding()
                        .background(Color(GeneralUtils.accentColor))
                        .clipShape(.capsule)
                        .padding(.all, 2.5)
                        .foregroundStyle(Color(GeneralUtils.primaryColor))
                        
                    }
                    
                    Spacer()
                    
                    Button(action: { self.registerNewUser() }) {
                        Text("Sign Up")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(GeneralUtils.secondaryColor))
                            .cornerRadius(100)
                            .padding(.all, 2.5)
                            .foregroundStyle(Color(GeneralUtils.accentColor))
                            .font(.headline)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                    } .navigationDestination(isPresented: $isRegistered) {
                        HomeView()
                    }
                }
                .padding()
            }
        }
    }

    func registerNewUser() {
        let newUser = User(name: name, lastName: lastName, job: job, email: email, password: password)
        
        dump(newUser)
        
        newUser.id = newUser.getIdNumber() + 1
        
        
        newUser.RegisterUser(user: newUser)
        
        self.isRegistered = true
    }
    
}

#Preview {
    RegistrationView()
}
