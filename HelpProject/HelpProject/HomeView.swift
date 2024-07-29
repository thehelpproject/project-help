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

var lostSection: [Option] {
     [Option(displayName: "Object", imageName: "bag.fill"),
     Option(displayName: "Pet", imageName: "pawprint.fill"),
     Option(displayName: "Person", imageName: "person.fill")]
 }

var foundSection: [Option] {
     [Option(displayName: "Object", imageName: "bag.fill"),
     Option(displayName: "Pet", imageName: "pawprint.fill"),
     Option(displayName: "Person", imageName: "person.fill")]
 }

var neededSection: [Option] {
     [Option(displayName: "Object", imageName: "bag.fill"),
     Option(displayName: "Pet", imageName: "pawprint.fill"),
     Option(displayName: "Person", imageName: "person.fill")]
 }

var donateSection: [Option] {
     [Option(displayName: "Object", imageName: "bag.fill"),
     Option(displayName: "Pet", imageName: "pawprint.fill"),
     Option(displayName: "Person", imageName: "person.fill")]
 }

struct HomeView: View {
    
    @State var sections: [Section] = {
        [Section(title: "Lost", options: lostSection),
         Section(title: "Found", options: foundSection),
         Section(title: "Needed", options: neededSection),
         Section(title: "Donate", options: donateSection)]
    }()
    
    var body: some View {
        ForEach(sections) { sec in
            OptionsCardView(options: sec.options, cardTitle: sec.title)
        }
    }
}

#Preview {
    HomeView()
}
