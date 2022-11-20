//
//  ContentView.swift
//  Place
//
//  Created by Bruna Baudel on 18/11/2022.
//

import SwiftUI
import UIKit

enum BrowserSection: String, CaseIterable {
    case categories = "Categories"
    case roomSets = "Room Sets"
}

struct MainView: View {
    
    @State var segmentationSelection: BrowserSection = .categories
    
    /// Note: this is not the right way to change the segmented control because it will change the general setup for all segmented controls
    init() {
        let titleParagraphStyle = NSMutableParagraphStyle()
        titleParagraphStyle.alignment = .right
        let titleFont = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.title2)

        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.font: titleFont, NSAttributedString.Key.foregroundColor: UIColor.systemBlue, NSAttributedString.Key.paragraphStyle: titleParagraphStyle], for:.selected)
        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.font: titleFont, NSAttributedString.Key.foregroundColor: UIColor.systemCyan, NSAttributedString.Key.paragraphStyle: titleParagraphStyle], for:.normal)
        
        UISegmentedControl.appearance().setBackgroundImage(imageWithColor(.clear), for: .normal, barMetrics: .default)
        
        UISegmentedControl.appearance().setDividerImage(imageWithColor(UIColor.clear), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
    }

    var body: some View {
        NavigationView {
            VStack {
                
                Text("Browse")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Picker("", selection: $segmentationSelection) {
                    ForEach(BrowserSection.allCases, id: \.self) { option in
                        Text(option.rawValue)
                            .fontWeight(.thin)
                            .tag(option)
                            
                    }
                    Spacer()
                }
                .pickerStyle(.segmented)
                .fixedSize(horizontal: true, vertical: false)
                .padding(0)
                
                Divider()
                    .padding(0)
                
                displayCorrectView(segmentationSelection)

            }
            .navigationTitle("")
        }
        .tint(.white)
        .edgesIgnoringSafeArea(.all)
        
    }
    
    func displayCorrectView(_ selectedOption: BrowserSection) -> some View {
        switch selectedOption {
        case .categories:
            return MainListView(listModel: categoryListModel)
        case .roomSets:
            return MainListView(listModel: roomSetsListModel)
        }
    }
    
    private func imageWithColor(_ color: UIColor) -> UIImage {
        let rect = CGRectMake(0.0, 0.0, 0.5, 50.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor);
        context!.fill(rect);
        let image = UIGraphicsGetImageFromCurrentImageContext()!;
        UIGraphicsEndImageContext();
        return image
    }
}
