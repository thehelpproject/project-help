//
//  HButton.swift
//  HelpProject
//
//  Created by Rahul Pahuja on 22/07/24.
//

import SwiftUI

struct HButton: View {
    @State private var text:String
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .textFieldStyle(.roundedBorder)
            .padding()
            .border(.purple)
            .background(.gray)
            .shadow(radius:3)
            
    }
}

#Preview {
    HButton("This is a button")
}

