//
//  DataStore.swift
//  AnimationsApp
//
//  Created by Илья Сесюнин on 08.08.2022.
//

import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
