//
//  ProfileView.swift
//  SwUi_Profile
//
//  Created by Marcelo Sampaio on 16/05/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State var viewModel = ProfileViewModel()
    
    var body: some View {
        VStack {

            ProfileDataView(viewModel: $viewModel)
            ProfileActionView(viewModel: $viewModel)
            
        }
            .ignoresSafeArea()
        
    }
}


struct ProfileDataView: View {
    
    @Binding var viewModel: ProfileViewModel
    
    var body: some View {
        Image(viewModel.user.picture)
            .resizable()
            .frame(width: 180, height: 180)
            .cornerRadius(90)
        
        Text(viewModel.user.name)
            .font(.system(.title).bold())
         
        Text(viewModel.user.nick)
            .font(.system(size: 20, weight: .regular))
            .foregroundColor(.gray)
        
        Text("\(viewModel.userFollowers)")
            .font(.system(size: 60, weight: .light))
            .padding(.top, 24)
    }
    
}



struct ProfileActionView: View {
    
    @Binding var viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            Button {
                print("📍 action follow/unfollow")
                viewModel.followToggle(isFollowing: viewModel.isFollowing)
                
            } label: {
                Label(!viewModel.isFollowing ? "follow" : "unfollow", systemImage: "rectangle")
                    .font(.title3)
                    .frame(maxWidth: . infinity)
            }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(!viewModel.isFollowing ? .blue : .black)

            
            
    
            Button{} label: {
                Label("contact Us", systemImage: "mail")
                    .font(.title3)
                    .frame(maxWidth: . infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .disabled(!viewModel.isFollowing)
        }
        .padding(24)
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
