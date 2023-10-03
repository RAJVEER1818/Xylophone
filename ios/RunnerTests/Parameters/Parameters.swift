//
//  Parameters.swift
//  RunnerTests
//
//  Created by Rajveer Singh Chhabra on 22/09/23.
//  Copyright © 2023 The Chromium Authors. All rights reserved.
//

import Foundation
import AudioToolbox

let RunnerTestsParameterSpecs = ParameterTreeSpec {
    ParameterGroupSpec(identifier: "global", name: "Global") {
        ParameterSpec(
            address: .sendNote,
            identifier: "sendNote",
            name: "Send Note",
            units: .boolean,
            valueRange: 0...1,
            defaultValue: 0
        )
        
        ParameterSpec(
            address: .midiNoteNumber,
            identifier: "midiNoteNumber",
            name: "MIDI Note Number",
            units: .midiNoteNumber,
            valueRange: 0...127,
            defaultValue: 60,
            flags: [.flag_IsWritable] // so that hosts like AUM expose this as automatable
        )
    }
}

extension ParameterSpec {
    init(
        address: RunnerTestsParameterAddress,
        identifier: String,
        name: String,
        units: AudioUnitParameterUnit,
        valueRange: ClosedRange<AUValue>,
        defaultValue: AUValue,
        unitName: String? = nil,
        flags: AudioUnitParameterOptions = [AudioUnitParameterOptions.flag_IsWritable, AudioUnitParameterOptions.flag_IsReadable],
        valueStrings: [String]? = nil,
        dependentParameters: [NSNumber]? = nil
    ) {
        self.init(address: address.rawValue,
                  identifier: identifier,
                  name: name,
                  units: units,
                  valueRange: valueRange,
                  defaultValue: defaultValue,
                  unitName: unitName,
                  flags: flags,
                  valueStrings: valueStrings,
                  dependentParameters: dependentParameters)
    }
}
