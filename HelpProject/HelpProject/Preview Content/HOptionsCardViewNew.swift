//
//  OCV.swift
//  HelpProject
//
//  Created by Rahul Pahuja on 29/07/24.
//

import SwiftUI

public struct Option: Identifiable {
    public var id = UUID()
    public  var displayName: String
    public var imageName: String
    
    public static var defaultOptions: [Option] {
        [Option(displayName: "Object", imageName: "bag.fill"),
        Option(displayName: "Pet", imageName: "pawprint.fill"),
        Option(displayName: "Person", imageName: "person.fill")]
    }
}

public struct HOptionsCardViewNew: View {
    @State var options: [Option]
    @State var cardTitle: String
    @State private var imgFillColor: Color = .purple
    
    var frameWidth = CGFloat(42.0)
    var frameHeight = CGFloat(42.0)
    var paddingInsetTop = CGFloat(0)
    var paddingInsetLeading = CGFloat(20.0)
    var paddingInsetBottom = CGFloat(-15.0)
    var paddingInsetTrailing = CGFloat(20.0)
    var lineWidth = CGFloat(4.0)
    var cornerRadius = CGFloat(12.0)
    var overlayCornerRadius = CGFloat(12.0)
    
    public var body: some View {
        VStack {
            Text(cardTitle)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack {
                ForEach(options) { opt in
                    Spacer()
                    VStack {
                        Image(systemName: opt.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: frameWidth, height:frameHeight)
                            .padding(EdgeInsets(top: paddingInsetTop, leading: paddingInsetLeading, bottom: paddingInsetBottom, trailing: paddingInsetTrailing))
                            .foregroundColor(imgFillColor)
                        Text(opt.displayName)
                            .padding()
                    }
                    Spacer()
                }
            }
        }
        .overlay(RoundedRectangle(cornerRadius: overlayCornerRadius)
            .stroke(Color.purple, lineWidth: lineWidth))
        .cornerRadius(cornerRadius)
        .padding()
        
    }
}

#Preview {
    HOptionsCardViewNew(options: Option.defaultOptions, cardTitle: "Card Title")
}
