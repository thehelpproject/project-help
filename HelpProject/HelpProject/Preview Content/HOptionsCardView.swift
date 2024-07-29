//
//  OptionsCardView.swift
//  HelpProject
//
//  Created by Pratik Parmar on 29/07/24.
//

import SwiftUI

struct Option: Identifiable {
    var id = UUID()
    var displayName: String
    var imageName: String
    
   static var defaultOptions: [Option] {
        [Option(displayName: "Object", imageName: "bag.fill"),
        Option(displayName: "Pet", imageName: "pawprint.fill"),
        Option(displayName: "Person", imageName: "person.fill")]
    }
}

struct OptionsCardView: View {
    @State var options: [Option]
    @State var cardTitle: String
    @State private var imgFillColor: Color = .purple
    
    private var frameWidth = CGFloat(42.0)
    private var frameHeight = CGFloat(42.0)
    private var paddingInsetTop = CGFloat(0)
    private var paddingInsetLeading = CGFloat(20.0)
    private var paddingInsetBottom = CGFloat(-15.0)
    private var paddingInsetTrailing = CGFloat(20.0)
    private var lineWidth = CGFloat(4.0)
    private var cornerRadius = CGFloat(12.0)
    private var overlayCornerRadius = CGFloat(12.0)
    
    var body: some View {
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
    OptionsCardView(options: Option.defaultOptions, cardTitle: "Card Title")
}

