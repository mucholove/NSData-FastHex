//
//  SwiftTests.swift
//  NSData+FastHex
//
//  Created by Jonathon Mah on 2015-05-14.
//  Copyright (c) 2015 Jonathon Mah. All rights reserved.
//

import Cocoa
import XCTest

class SwiftTests: XCTestCase {
    func testSimpleEncodingDecoding() {
        var bytes: [UInt8] = [0xDE, 0xAD, 0xBE, 0xEF, 0x42]
        var data = NSData(bytes: bytes, length: bytes.count)

        var hexString = data.hexStringRepresentation()
        XCTAssertEqual(hexString, "DEADBEEF42")

        var decoded = NSData(hexString: hexString)
        XCTAssertEqual(decoded, data)
    }
}
