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
            Text("Hello, Bruna!")
                .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
