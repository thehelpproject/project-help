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
    
    var body: some View {
        VStack {
            HStack {
                Text(cardTitle)
                    .padding()
                Spacer()
            }
            HStack {
                ForEach(options) { opt in
                    VStack {
                        Image(systemName: opt.imageName)
                            .resizable()
                            .frame(width: 42.0, height:42)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: -15, trailing: 20))
                            .foregroundColor(imgFillColor)
                        Text(opt.displayName)
                            .padding()
                    }
                }
            }
        }
        .overlay(RoundedRectangle(cornerRadius: 12)
            .stroke(Color.purple, lineWidth: 8))
        .cornerRadius(12)
        .padding()
    }
}

#Preview {
    OptionsCardView(options: Option.defaultOptions, cardTitle: "Card Title")
}

