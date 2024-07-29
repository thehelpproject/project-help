//
//  HomeView.swift
//  HelpProject
//
//  Created by Pratik Parmar on 29/07/24.
//

import SwiftUI

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var options: [Option]
}

struct HomeView: View {
    
    @State var sections = HomeViewModel.allSections
    
    var body: some View {
        ForEach(sections) { sec in
            HOptionsCardViewNew(options: sec.options, cardTitle: sec.title)
        }
    }
}

#Preview {
    HomeView()
}
