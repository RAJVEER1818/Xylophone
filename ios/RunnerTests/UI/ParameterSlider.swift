//
//  ParameterSlider.swift
//  RunnerTests
//
//  Created by Rajveer Singh Chhabra on 22/09/23.
//  Copyright © 2023 The Chromium Authors. All rights reserved.
//

import SwiftUI

/// A SwiftUI Slider container which is bound to an ObservableAUParameter
///
/// This view wraps a SwiftUI Slider, and provides it relevant data from the Parameter, like the minimum and maximum values.
struct ParameterSlider: View {
    @ObservedObject var param: ObservableAUParameter
    
    var specifier: String {
        switch param.unit {
        case .midiNoteNumber:
            return "%.0f"
        default:
            return "%.2f"
        }
    }
    
    var body: some View {
        VStack {
            Slider(
                value: $param.value,
                in: param.min...param.max,
                onEditingChanged: param.onEditingChanged,
                minimumValueLabel: Text("\(param.min, specifier: specifier)"),
                maximumValueLabel: Text("\(param.max, specifier: specifier)")
            ) {
                EmptyView()
            }
            Text("\(param.displayName): \(param.value, specifier: specifier)")
        }
        .padding()
    }
}
