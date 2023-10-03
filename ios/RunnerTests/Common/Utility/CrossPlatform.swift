//
//  CrossPlatform.swift
//  RunnerTests
//
//  Created by Rajveer Singh Chhabra on 22/09/23.
//  Copyright © 2023 The Chromium Authors. All rights reserved.
//

import Foundation
import SwiftUI

#if os(iOS)
typealias HostingController = UIHostingController
#elseif os(macOS)
typealias HostingController = NSHostingController

extension NSView {
	
	func bringSubviewToFront(_ view: NSView) {
		// This function is a no-opp for macOS
	}
}
#endif
