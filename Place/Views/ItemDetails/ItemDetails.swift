//
//  ItemDetails.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import SwiftUI

struct ItemDetails: View {
    
    var item: GridItemModel
    var imageSize: CGFloat
    @State var isFavorite: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            ScrollView {
                VStack(alignment: .leading) {
                    
                    Image(item.image)
                        .resizable()
                        .frame(width: imageSize, height: imageSize + (imageSize / 4))
                        .aspectRatio(contentMode: .fit)
                    
                    VStack(alignment: .leading) {
                        Button {
                            print("ksdjbf")
                            isFavorite.toggle()
                        } label: {
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                .foregroundColor(isFavorite ? .red : .blue)
                                .padding(4)
                        }
                        
                        Text(item.title.uppercased())
                            .font(.title2)
                            .bold()
                            .fontWeight(.ultraLight)
                            .padding(.bottom, 2)
                        
                        Text(item.details)
                            .font(.subheadline)
                            .fontWeight(.light)
                            .padding(.bottom, 1)
                        
                        Text(item.description.lowercased())
                            .font(.subheadline)
                            .fontWeight(.light)
                            .padding(.bottom, 2)
                        
                        Text(item.formatPrice)
                            .font(.subheadline)
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                            .padding(.bottom, 16)
                        
                        Text(item.serialNumber)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .font(.subheadline)
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                            .background(.gray.opacity(0.1))
                    }
                    .padding(16)
                    .padding(.bottom, 32)
                    
                    Divider()
                        .padding(.bottom, 32)
                    
                    SuggestedItemsView(imageSize: imageSize)
                    
                }
            }
            .ignoresSafeArea()
            
            VStack {
                Button(action: {
                    print("Show Menu")
                    
                }) {
                    ZStack {
                        Circle()
                            .foregroundColor(.blue)
                            .frame(width: 55, height: 55)
                        Image(systemName: "arkit")
                            .imageScale(.large)
                            .foregroundColor(.white)
                    }
                    .shadow(color: .gray, radius: 0.6, x: 1, y: 1)
                }
            }
            .padding()
        }
    }
}

struct UIViewControll: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = ViewController()
        vc.modalPresentationStyle = .fullScreen
        return vc
    }
}

