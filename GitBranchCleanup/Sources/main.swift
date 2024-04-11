//
//  main.swift
//  test
//
//  Created by Ben LaVerriere on 4/11/24.
//

import Foundation
import SwiftCLI

class GreetCommand: Command {

    let name = "greet"

    enum Volume: String, ConvertibleFromString, CaseIterable {
        case loud
        case quiet
    }

    @Param var volume: Volume

    func execute() throws {
        let greeting = "Hello world!"

        switch volume {
        case .loud: stdout <<< greeting.uppercased()
        case .quiet: stdout <<< greeting.lowercased()
        }

    }
}

let myCli = CLI(singleCommand: GreetCommand())
//name: "greeter", version: "1.0.0", description: "Greeter - a friendly greeter")

let generator = ZshCompletionGenerator(cli: myCli)
//generator.writeCompletions()

print("a")
myCli.go()
print("b")
