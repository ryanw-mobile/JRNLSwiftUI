//
//  ContentView.swift
//  JRNLSwiftUI
//
//  Created by Ryan Wong on 02/04/2024.
//

import SwiftUI

struct ContentView: View {
    var journalEntries: [JournalEntry] = testData

    var body: some View {
        NavigationStack {
            List(self.journalEntries) { journalEntry in
                JournalCell(journalEntry: journalEntry)
            }.navigationTitle("Journal List")
                .navigationDestination(for: JournalEntry.self) {
                    JournalEntry in
                    Text(JournalEntry.entryTitle)
                }
        }
    }
}

#Preview {
    ContentView()
}

struct JournalCell: View {
    var journalEntry: JournalEntry
    var body: some View {
        NavigationLink(value: self.journalEntry) {
            VStack {
                HStack {
                    Image(uiImage: self.journalEntry.photo ?? UIImage(systemName: "face.smiling")!)
                        .resizable()
                        .frame(width: 90, height: 90)
                    VStack {
                        Text(self.journalEntry.date.formatted(.dateTime.day().month().year()))
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(self.journalEntry.entryTitle)
                            .font(.title2)
                            .foregroundStyle(.secondary)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                }
            }
        }
    }
}
