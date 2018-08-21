//
//  TrapObject.swift
//  TrapsDataFetch
//
//  Created by Sandesh Ramakrishna on 8/15/18.
//  Copyright © 2018 WilburEllis. All rights reserved.
//

import UIKit

class TrapObject: NSObject {

    public var trapTitle:String?
    public var firstCount:String?
    public var secondCount:String?
    public var thirdCount:String?
    public var pestAbbre:String?
    public var lurelife:String?
    public var fieldName:String?
    public var blockName:String?
    public var subBlockName:String?
    
    init(numberString:String)
    {
        self.trapTitle      = "Title" + numberString;
        self.firstCount     = "111";
        self.secondCount    = "222";
        self.thirdCount     = "333";
        self.pestAbbre      = "AWVL";
        self.lurelife       = "Expired";
        self.fieldName      = "TestField";
        self.blockName      = "TestBlock";
        self.subBlockName   = "TestSubBlock";
    }
}
