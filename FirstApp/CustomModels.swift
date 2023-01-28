//
//  CustomModels.swift
//  FirstApp
//
//  Created by Joram Kwetters on 28/01/2023.
//

import SwiftUI

struct UserModel : Identifiable{
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
    
}

struct CustomModels: View {
    
    @State var users: [UserModel] = [
        //"Nick", "Jerome", "Kees"
        UserModel(displayName: "Jerome", userName: "Jerome03", followerCount: 1273, isVerified: true),
        UserModel(displayName: "Kees", userName: "Keesie123", followerCount: 32, isVerified:  false),
        UserModel(displayName: "Karel", userName: "X_Kareltje12", followerCount: 10323, isVerified: false)
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if(user.isVerified){
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                      
                            
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
                
                
                //                ForEach(users, id: \.self) { name in
                //                    HStack(spacing: 15.0) {
                //                        Circle()
                //                            .frame(width: 35, height: 35)
                //                        Text(name.displayName)
                //                    }
                //                    .padding(.vertical, 10)
                //                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct CustomModels_Previews: PreviewProvider {
    static var previews: some View {
        CustomModels()
    }
}
