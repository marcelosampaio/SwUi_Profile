//
//  ContentView.swift
//  SwUi_Profile
//
//  Created by Marcelo Sampaio on 16/05/22.
//

import SwiftUI

struct User {
    var picture: String
    var name: String
    var nick: String
    var followers: Double
}


struct ContentView: View {
    
    var user = User(picture: "profilePicture",
                    name: "Username",
                    nick: "@username",
                    followers: 1501)
    
    var body: some View {
        VStack {
            Image("profilePicture")
                .resizable()
                .frame(width: 180, height: 180)
                .cornerRadius(90)
            
            Text("Username")
                .font(.system(.title).bold())
             
            Text("@username")
                .font(.system(size: 20, weight: .regular))
                .foregroundColor(.gray)
            
            Text("1.500 followers")
                .font(.system(size: 22, weight: .light))
                .padding(.top, 40)
            
            VStack {
                Button{} label: {
                    Label("Follow", systemImage: "rectangle")
                        .font(.title3)
                        .frame(maxWidth: . infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
        
                Button{} label: {
                    Label("Contact Us", systemImage: "mail")
                        .font(.title3)
                        .frame(maxWidth: . infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .disabled(true)
                
                
            }
            .padding(24)
        
            
        }
            .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
