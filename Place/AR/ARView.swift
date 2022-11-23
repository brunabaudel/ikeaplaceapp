//
//  ARView.swift
//  Place
//
//  Created by Bruna Baudel on 22/11/2022.
//

import SwiftUI

struct ARView: View {
    
    var item: GridItemModel?
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.primary.edgesIgnoringSafeArea(.all)
            
            UICamViewController()

            HStack {
                VStack(alignment: .leading) {
                    Text(item?.title.uppercased() ?? "")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top, 72)
                        .padding(.leading, 32)
                    
                    Text(item?.formatPrice ?? "")
                        .foregroundColor(.white)
                        .padding(.leading, 32)
                }
                
                Spacer()
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .padding(.top, 72)
                        .padding(.trailing, 32)
                }
            }
            
        }
        .ignoresSafeArea()
    }
}
