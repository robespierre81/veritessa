//  ContentView.swift
//  Veritessa iOS App
//
//  Created by Walter Kurz on 28.05.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var imageOpacity: Double = 0.0
    @State private var isSignInButtonClicked = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()

                VStack (spacing: 20) {
                    Image("logo_full_w")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .padding(.bottom, 120)

                    if isSignInButtonClicked {
                        Button(action: {
                            print("Sign up as individual clicked.")
                        }) {
                            Text("Sign up as Individual")
                                .frame(minWidth: 0, maxWidth: 400)
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .bold))
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 60)
                        
                        Button(action: {
                            print("Sign up as company clicked.")
                        }) {
                            Text("Sign up as Company")
                                .frame(minWidth: 0, maxWidth: 400)
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .bold))
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 60)
                    } else {
                        Button(action: {
                            withAnimation {
                                self.isSignInButtonClicked = true
                            }
                        }) {
                            Text("Sign in")
                                .frame(minWidth: 0, maxWidth: 400)
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .bold))
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 60)
                    }

                    NavigationLink(destination: LoginViewData()) {
                        Text("Login")
                            .frame(minWidth: 0, maxWidth: 400)
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .bold))
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.clear))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 1)
                            )
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 60)
                }

                Spacer()

                Image("powered_by")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .padding(.bottom, 80)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("intro_1_black")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
