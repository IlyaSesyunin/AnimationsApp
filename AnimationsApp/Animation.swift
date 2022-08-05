//
//  Animation.swift
//  AnimationsApp
//
//  Created by Илья Сесюнин on 04.08.2022.
//

import Foundation

struct Animation {
    var autostart: Bool
    var autohide: Bool

    var title: String
    var curve: String

    var force: Double
    var delay: Double
    var duration: Double

    static func getDefaultValues() -> Animation {
        Animation(
            autostart: false,
            autohide: false,
            title: "pop",
            curve: "easeInt",
            force: 1,
            delay: 0,
            duration: 0.7
        )
    }
}

