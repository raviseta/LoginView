//
//  ContentView.swift
//  LoginView
//
//  Created by Ravi Seta on 04/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background.image")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Text("Hello")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 16)
                
                VStack(alignment: .leading, spacing: 12) {
                    TextField("Email", text: .constant(""))
                        .padding()
                        .background(.white)
                        .cornerRadius(10, antialiased: true)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    Button {
                        // Action for Continue button
                    } label: {
                        Text("Continue")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 16)
                            .background(.green)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                    Text("Or")
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                    
                    // Social login buttons
                    SocialLoginButton(title: "Continue with Google", logo: "logo.google", color: .white)
                    SocialLoginButton(title: "Continue with Apple", logo: "logo.apple", color: .black)
                    
                    VStack {
                        HStack {
                            Text("Don't have an account?")
                                .foregroundStyle(.white)
                                .font(.footnote)
                            
                            Button {
                                // Navigate to signup page
                            } label: {
                                Text("Sign up")
                                    .foregroundStyle(.green)
                                    .fontWeight(.bold)
                                    .font(.footnote)
                            }

                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    
                    Button {
                        // Forgot password action
                    } label: {
                        Text("Forgot password?")
                            .foregroundStyle(.green)
                            .fontWeight(.bold)
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .cornerRadius(8, antialiased: true)
                .background(
                    LinearGradient(
                        colors: [Color.black.opacity(0.7), Color.gray.opacity(0.5)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            }
            .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))

        }
       
    }
}

struct SocialLoginButton: View {
    var title: String
    var logo: String
    var color: Color
    
    var body: some View {
        HStack {
            Image(logo)
                .foregroundColor(color == .white ? .black : .white)
            Text(title)
                .foregroundColor(color == .white ? .black : .white)
                .fontWeight(.semibold)
        }
        .frame(height: 25)
        .frame(maxWidth: .infinity)
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

#Preview {
    ContentView()
}
