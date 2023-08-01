//
//  Homescreen.swift
//  Phi Kappa Psi Family Tree
//
//  Created by Karl Mellinger on 7/31/23.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

struct Homescreen: View {
    @State private var badgeNum = ""
    @State private var password = ""
    @State private var wrongBadge = 0
    @State private var wrongPass = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack() {
                VStack{
                    Text("Phi Kappa Psi Oregon Beta Family Tree")
                        .fontWeight(.bold)
                        .padding()
                    Image("Logo")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                        .padding()
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Badge Number:", text: $badgeNum)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongBadge))
                    SecureField("Password:", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPass))
                    Button("Login"){
                        authenticateUser(badgeNumber: badgeNum, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.orange)
                    .cornerRadius(10)
                    
                    NavigationStack{
                        NavigationLink(destination: Text("You are logged in \(badgeNum)"), isActive: $showingLoginScreen) {
                            EmptyView()
                        }
                    }
                }
                .navigationBarHidden(true)
            }
        }
    }
    func authenticateUser(badgeNumber: String, password: String){
        if badgeNum == "1099" {
            wrongBadge = 0
            if password == "LM1852" {
                wrongPass = 0
                showingLoginScreen = true
            }
            else {
                wrongPass = 2
            }
        }
        else {
            wrongBadge = 2
        }
    }
}

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen()
    }
}
