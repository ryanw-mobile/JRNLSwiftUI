//
//  JourneyEntryDetail.swift
//  JRNLSwiftUI
//
//  Created by Ryan Wong on 02/04/2024.
//  Copyright © 2024 RW MobiMedia UK. All rights reserved.
//

import SwiftUI

struct JourneyEntryDetail: View {
    var selectedJournalEntry: JournalEntry
    var body: some View {
        ScrollView {
            VStack {
                Spacer().frame(height: 30)

                Text(self.selectedJournalEntry.date.formatted(.dateTime.day().month().year()))
                    .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)

                Spacer().frame(height: 30)

                Text(self.selectedJournalEntry.entryTitle)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: .leading)

                Spacer().frame(height: 30)

                Text(self.selectedJournalEntry.entryBody)
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer().frame(height: 30)

                Image(uiImage: self.selectedJournalEntry.photo ?? UIImage(systemName: "face.smiling")!)
                    .resizable()
                    .frame(width: 300, height: 300)

                Spacer().frame(height: 30)

                MapView(journalEntry: self.selectedJournalEntry)
                    .frame(width: 300, height: 300)
            }.padding()
                .navigationTitle("Entry Detail")
        }
    }
}

#Preview {
    NavigationView {
        JourneyEntryDetail(selectedJournalEntry: testData[0])
    }
}
