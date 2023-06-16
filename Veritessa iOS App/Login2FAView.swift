//
//  Login2FAView.swift
//  Veritessa iOS App
//
//  Created by Walter Kurz on 30.05.23.
//

import SwiftUI

struct Login2FAView: View {
    @State private var input1 = ""
    @State private var input2 = ""
    @State private var input3 = ""
    @State private var input4 = ""
    @State private var input5 = ""
    @State private var input6 = ""

    var body: some View {
        VStack {
            Text("Two-Factor Authentication")
                .font(.system(size: 25, weight: .bold))
                .padding(.top, 150)
                .foregroundColor(.white)
                .padding(.bottom, 30)

            VStack(alignment: .leading) {
                Text("Enter Code")
                    .font(.system(size: 17, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                
                Text("Open your Google Authenticator App. This step provides extra security for your account.")
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
                HStack {
                    ForEach(0..<6) { _ in
                        TextField("", text: $input1)
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                            .onReceive(input1.publisher.collect()) {
                                self.input1 = String($0.prefix(1))
                            }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 40)

                Button(action: {
                    print("Login clicked.")
                }) {
                    Text("Login")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .bold))
                        .padding()
                        .background(Color(red: 122/255, green: 122/255, blue: 122/255))
                        .cornerRadius(10)
                }
                .padding(.bottom, 30)

                HStack {
                    Spacer()
                    Text("By clicking on Login you agree to Veritessa’s Terms & Conditions.")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .font(.system(size: 13))
                .padding(.bottom, 30)
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
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .accentColor(.white)
    }
}

struct Login2FAView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Login2FAView()
        }
    }
}
