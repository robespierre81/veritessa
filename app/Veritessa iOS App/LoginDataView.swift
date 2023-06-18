//  LoginViewData.swift
//  Veritessa iOS App
//
//  Created by Walter Kurz on 30.05.23.
//

import SwiftUI

struct LoginViewData: View {
    
    @State private var email: String = "sample@sample.com"
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome Back!")
                    .font(.system(size: 25, weight: .bold))
                    .padding(.top, 150)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                VStack(alignment: .leading) {
                    Text("Email Address")
                        .font(.headline)
                        .foregroundColor(.white)
                    TextField("", text: $email)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                    
                    Text("Password")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.top, 20)
                    HStack {
                        if isPasswordVisible {
                            TextField("", text: $password)
                        } else {
                            SecureField("", text: $password)
                        }
                        Button(action: {
                            isPasswordVisible.toggle()
                        }) {
                            Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Login2FAView()) {
                        Text("Next")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .bold))
                            .padding()
                            .background(Color(red: 122/255, green: 122/255, blue: 122/255))
                            .cornerRadius(10)
                    }
                    .padding(.top, 40)
                    
                    NavigationLink(destination: Text("Forgot Password View Placeholder")) {
                        Text("Forgot Password")
                            .foregroundColor(.white)
                            .bold()
                    }
                    .padding(.top, 20)
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                Button(action: {
                    print("Invite a friend clicked.")
                }) {
                    Text("Invite a friend")
                        .frame(minWidth: 0, maxWidth: 500)
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .bold))
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.clear))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 1)
                        )
                }
                .padding(.bottom, 70)
                .padding(.horizontal, 40)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 23/255, green: 23/255, blue: 23/255))
            .edgesIgnoringSafeArea(.all)
            .navigationBarBackButtonHidden(false)
        }
        .accentColor(.white)
    }
}

struct LoginViewData_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewData()
    }
}
