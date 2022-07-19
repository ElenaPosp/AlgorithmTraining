//
//  Lecture1.swift
//  AlgorithmTraining
//
//  Created by Elena Pospelova on 20.07.2022.
//

import Foundation

class Lecture1 {}

extension Lecture1 {
    func task2() {
        print("Задача: Кондиционер")
    }
}

extension Lecture1 {
    func task1() {
        print("Задача: Кондиционер")
        
        enum Mode: String {
            case freeze
            case heat
            case auto
            case fan
        }
        let response1 = readLine()!
        let response2 = readLine()!
        let roomT = Int(response1.components(separatedBy: " ").first!)!
        let condT = Int(response1.components(separatedBy: " ").last!)!

        let mode = Mode(rawValue: response2)!
        
        switch mode {
        case .freeze:
            print(min(roomT,condT))

        case .heat:
            print(max(roomT,condT))

        case .auto:
            print(condT)

        case .fan:
            print(roomT)
        }
    }

}
