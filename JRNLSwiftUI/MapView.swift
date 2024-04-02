//
//  MapView.swift
//  JRNLSwiftUI
//
//  Created by Ryan Wong on 02/04/2024.
//  Copyright © 2024 RW MobiMedia UK. All rights reserved.
//

import MapKit
import SwiftUI

struct MapView: View {
    var journalEntry: JournalEntry
    var body: some View {
        Map(bounds: MapCameraBounds(minimumDistance: 4500, maximumDistance: 4500)) {
            Marker(self.journalEntry.entryTitle, coordinate: CLLocationCoordinate2D(latitude: self.journalEntry.latitude ?? 0.0, longitude: self.journalEntry.longitude ?? 0.0))
        }
    }
}

#Preview {
    MapView(journalEntry: testData[0])
}
