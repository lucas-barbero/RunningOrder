//
//  Sprints_Previews.swift
//  RunningOrder
//
//  Created by Clément Nonn on 08/07/2020.
//  Copyright © 2020 Worldline. All rights reserved.
//

import Foundation
import SwiftUI

extension Sprint {
    enum Previews {
        static let sprints = [
            Sprint(number: 1, name: "Sprint", colorIdentifier: "blue1", stories: Story.Previews.stories),
            Sprint(number: 2, name: "Sprint", colorIdentifier: "green1", stories: [])
        ]
    }
}
