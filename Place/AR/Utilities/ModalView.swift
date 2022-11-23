//
//  ModalView.swift
//  Place
//
//  Created by Bruna Baudel on 20/11/2022.
//

import SwiftUI

struct MainModalView: View {
    
    @State var segmentationSelection: BrowseSection = .categories
    @State private var isModal = true
    
    
    
    var body: some View {
        ModalView(isPresented: $isModal) {
            
            Text("jdfksnksjnd")
            
//            VStack {
//
//                Text("Browse")
//                    .font(.title)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .padding()
//
//                Picker("", selection: $segmentationSelection) {
//                    ForEach(BrowserSection.allCases, id: \.self) { option in
//                        Text(option.rawValue)
//                            .fontWeight(.thin)
//                            .tag(option)
//
//                    }
//                    Spacer()
//                }
//                .pickerStyle(.segmented)
//                .fixedSize(horizontal: true, vertical: false)
//                .padding(0)
//
//                Divider()
//                    .padding(0)
//
//                displayCorrectView(segmentationSelection)
//
//            }
        }
    }
    
//    func displayCorrectView(_ selectedOption: BrowseSection) -> some View {
//        switch selectedOption {
//        case .categories:
//            return MainListView(listModel: categoryListModel)
//        case .roomSets:
//            return MainListView(listModel: roomSetsListModel)
//        }
//    }
}

struct ModalView<V: View>: View {
    @Binding var isPresented: Bool
    @ViewBuilder var content: () -> V

    var body: some View {
        ZStack {
            content()
            ZStack {
                VStack {
                    if isPresented {
                        Color.black.opacity(0.8)
                            .transition(.opacity)
                    }
                }.animation(.easeInOut(duration: 0.25), value: isPresented)

                VStack {
                    if isPresented {
                        Color.white
                            .cornerRadius(20.0)
                            .padding(.top, 150)
                            .offset(x: 0, y: 10)
                            .transition(.move(edge: .bottom))
                    }
                }.animation(.spring().delay(0.3), value: isPresented)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            .onTapGesture {
                isPresented = false
            }
        }
    }
}
