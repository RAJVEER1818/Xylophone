//
//  RunnerTestsParameterAddresses.h
//  RunnerTests
//
//  Created by Rajveer Singh Chhabra on 22/09/23.
//  Copyright © 2023 The Chromium Authors. All rights reserved.
//

#pragma once

#include <AudioToolbox/AUParameters.h>

#ifdef __cplusplus
namespace RunnerTestsParameterAddress {
#endif

typedef NS_ENUM(AUParameterAddress, RunnerTestsParameterAddress) {
    sendNote = 0,
    midiNoteNumber = 1
};

#ifdef __cplusplus
}
#endif
