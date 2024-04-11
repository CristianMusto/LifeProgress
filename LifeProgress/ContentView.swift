//
//  ContentView.swift
//  LifeProgress
//
//  Created by Kriis Musto on 21/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var startAnimation: Bool = false
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [
                        Color(GeneralUtils.secondaryColor),
                        Color(GeneralUtils.primaryColor),
                        Color(GeneralUtils.contrastColor)
                    ],
                    startPoint: startAnimation ? .topLeading : .bottomLeading,
                    endPoint: startAnimation ? .bottomTrailing : .topTrailing
                )
                // Animation to toggle the gradient colors
                .onAppear {
                    withAnimation(.easeInOut(duration: 5.5)) {
                        startAnimation.toggle()
                    }
                }
                .ignoresSafeArea()
                .overlay(Color(GeneralUtils.primaryColor).opacity(0.5))
            
                VStack(alignment: .center) {
                    
                    Spacer()
                    
                    VStack(alignment: .center) {
                        
                        Text(GeneralUtils.appName)
                            .font(.title)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 2.5)
                            .foregroundStyle(Color(GeneralUtils.accentColor))
                        
                        Text(GeneralUtils.welcomeSubtitle)
                            .font(.subheadline)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color(GeneralUtils.accentColor))
                        
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center) {
                        
                        NavigationLink(destination: LoginView()) {
                            Text("Sign Up")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(Color(GeneralUtils.accentColor))
                                .frame(maxWidth: .infinity)
                                
                                
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(GeneralUtils.contrastColor))
                        .cornerRadius(100)
                        .padding(.all, 2.5)
                        
                        
                        NavigationLink(destination: LoginView()) {
                            Text("Sign In")
                                .font(.headline)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(Color(GeneralUtils.accentColor))
                                .frame(maxWidth: .infinity)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(GeneralUtils.secondaryColor))
                        .cornerRadius(100)
                        .padding(.all, 2.5)
                        
                    }
                    .padding()
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
