//
//  RunnerTestsAudioUnit.h
//  RunnerTests
//
//  Created by Rajveer Singh Chhabra on 22/09/23.
//  Copyright © 2023 The Chromium Authors. All rights reserved.
//

#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface RunnerTestsAudioUnit : AUAudioUnit
- (void)setupParameterTree:(AUParameterTree *)parameterTree;
@end
