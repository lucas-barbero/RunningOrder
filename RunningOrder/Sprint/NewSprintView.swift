//
//  NewSprintView.swift
//  RunningOrder
//
//  Created by Clément Nonn on 07/07/2020.
//  Copyright © 2020 Worldline. All rights reserved.
//

import SwiftUI

struct NewSprintView: View {
    @State private var name: String = ""
    @State private var number: Int?

    private var areAllFieldsFilled: Bool {
        return number != nil && !name.isEmpty
    }

    @Binding var createdSprint: Sprint?
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            TextField("Sprint Number", value: $number, formatter: NumberFormatter())
            TextField("Sprint Name", text: $name, onEditingChanged: { _ in }, onCommit: createSprint)

            HStack {
                Button(action: dismiss) { Text("Cancel") }
                Spacer()
                Button(action: createSprint) { Text("Create") }
                    .disabled(!areAllFieldsFilled)
            }
        }.padding()
    }

    private func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }

    private func createSprint() {
        guard areAllFieldsFilled else { return }
        let newSprint = Sprint(number: number!, name: name, colorIdentifier: "holiday blue")
        createdSprint = newSprint
        Store.data[newSprint] = []
        dismiss()
    }
}

struct NewSprintView_Previews: PreviewProvider {
    static var previews: some View {
        NewSprintView(createdSprint: .constant(nil))
    }
}
