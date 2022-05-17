//
//  ProfileViewModel.swift
//  SwUi_Profile
//
//  Created by Marcelo Sampaio on 17/05/22.
//

import Foundation

struct ProfileViewModel {
    
    var isFollowing = false
    var userFollowers = String()
    
    var user = User(picture: "profilePicture",
                    name: "Username",
                    nick: "@username",
                    followers: 1501)

    init() {
        loadFollowers()
    }
    
    mutating func loadFollowers() {
        self.userFollowers = customizeNumber(value: user.followers)
    }
    
    
    func customizeNumber(value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale(identifier: "pt_BR")
        let shorten = formatter.string(for: value) ?? "0"
        return "\(shorten)K"
    }
    
    
    mutating func followToggle(isFollowing: Bool) {
        self.isFollowing.toggle()
        self.isFollowing ? (self.user.followers += 1) : (self.user.followers -= 1)
        loadFollowers()
        
    }
}
