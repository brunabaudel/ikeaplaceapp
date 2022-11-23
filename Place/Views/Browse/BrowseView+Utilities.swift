//
//  Browse+Utilities.swift
//  Place
//
//  Created by Bruna Baudel on 21/11/2022.
//

import SwiftUI

extension BrowseView {
    
    /// Note: workaround
    func imageWithColor(_ color: UIColor) -> UIImage {
        let rect = CGRectMake(0.0, 0.0, 0.5, 50.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor);
        context!.fill(rect);
        let image = UIGraphicsGetImageFromCurrentImageContext()!;
        UIGraphicsEndImageContext();
        return image
    }
    
    /// Note: this is not the right way to change the segmented control because it will change the general setup for all segmented controls
    func initSettup() {
        let titleParagraphStyle = NSMutableParagraphStyle()
        titleParagraphStyle.alignment = .right
        let titleFont = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.title2)

        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.font: titleFont, NSAttributedString.Key.foregroundColor: UIColor.systemBlue, NSAttributedString.Key.paragraphStyle: titleParagraphStyle], for:.selected)
        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.font: titleFont, NSAttributedString.Key.foregroundColor: UIColor.lightGray, NSAttributedString.Key.paragraphStyle: titleParagraphStyle], for:.normal)
        
        UISegmentedControl.appearance().setBackgroundImage(imageWithColor(.clear), for: .normal, barMetrics: .default)
        
        UISegmentedControl.appearance().setDividerImage(imageWithColor(UIColor.clear), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
    }
}

//                GeometryReader { geometry in
//                    VStack {
//                        if geometry.frame(in: .global).minY <= 0 {
//                            Image(item.image)
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: geometry.size.width, height: geometry.size.height)
//                            .offset(y: geometry.frame(in: .global).minY/9)
//                            .clipped()
//                        } else {
//                            Image(item.image)
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
//                                .clipped()
//                        }
//                    }
//                }
