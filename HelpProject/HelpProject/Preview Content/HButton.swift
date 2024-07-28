//
//  HButton.swift
//  HelpProject
//
//  Created by Rahul Pahuja on 22/07/24.
//

import SwiftUI

struct HButton: View {
    @State private var text: String
    @State private var borderColor: Color = .white
    @State private var cornerRadius: CGFloat = 25
    @State private var borderWidth: CGFloat = 2
    @State private var shadowRadius: CGFloat = 12
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Text(text)
                .foregroundColor(.white)
                .padding()
        })
        .background(.blue)
        .overlay(RoundedRectangle(cornerRadius: cornerRadius)
                            .stroke(borderColor, lineWidth: borderWidth))
        .cornerRadius(cornerRadius)
        .shadow(radius: shadowRadius)

        
        

    }
}

#Preview {
    HButton("This is a button")
}

