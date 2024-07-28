//
//  HIncrementerButton.swift
//  HelpProject
//
//  Created by Rahul Pahuja on 24/07/24.
//

import SwiftUI

struct HIncrementerButton: View {
    @State private var count = 0
    @State var units: String?

    var body: some View {
        HStack {
            Button(action: {
                count-=1
            }, label: {
                Image(systemName: "minus.circle")
            }).animation(.easeIn)
            Text("\(count)")
            if let unit = units {
                Text("\(unit)")
            }
            Button(action: {
                count+=1
            }, label: {
                Image(systemName: "plus.circle")
            })
        }
    }
}

#Preview {
    HIncrementerButton()
}
