//
//  Stories_Previews.swift
//  RunningOrder
//
//  Created by Clément Nonn on 08/07/2020.
//  Copyright © 2020 Worldline. All rights reserved.
//

import Foundation

extension Story {
    enum Previews {
        static let stories = [
            Story(name: "Liste des sprints", ticketReference: "TICKET-1"),
            Story(name: "Créer un sprint", ticketReference: "TICKET-2"),
            Story(name: "Créer une story", ticketReference: "TICKET-3"),
            Story(name: "modifier une story", ticketReference: "TICKET-4")
        ]
    }
}
