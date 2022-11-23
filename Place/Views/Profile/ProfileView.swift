//
//  ProfileView.swift
//  Place
//
//  Created by Bruna Baudel on 22/11/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Hello, Bruna!")
                    .font(.title)
                    .fontWeight(.light)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Text("Your wishlist (0)")
                    .font(.title2)
                    .fontWeight(.light)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Spacer()
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
