//
//  TrapsDataFetchManager.swift
//  TrapsDataFetch
//
//  Created by Sandesh Ramakrishna on 8/15/18.
//  Copyright © 2018 WilburEllis. All rights reserved.
//

import UIKit

public class TrapsDataFetchManager: NSObject {

 open func trapsData(numberOfRows:NSNumber) -> Array<Any>
    {
        var aTrapsArray:Array<Any> = Array()
        var aNumberOfRows = numberOfRows.intValue;
        

        
        while numberOfRows != 0 {
            
            let aTrapObject: TrapObject = TrapObject(numberString: numberOfRows.stringValue)
            
            let aDictionary: Dictionary = ["trapTitle": aTrapObject.trapTitle,
                                           "firstCount" : aTrapObject.firstCount,
                                           "secondCount" : aTrapObject.secondCount,
                                           "thirdCount" : aTrapObject.thirdCount,
                                           "pestAbbre" : aTrapObject.pestAbbre,
                                           "lurelife" : aTrapObject.lurelife,
                                           "fieldName" : aTrapObject.fieldName,
                                           "blockName" : aTrapObject.blockName,
                                           "subBlockName" : aTrapObject.subBlockName]
            aTrapsArray.append(aDictionary)
            
            aNumberOfRows = aNumberOfRows - 1
        }
        
        return aTrapsArray
    }
}
