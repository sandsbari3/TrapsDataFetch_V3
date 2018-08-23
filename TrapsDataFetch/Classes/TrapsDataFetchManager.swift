//
//  TrapsDataFetchManager.swift
//  TrapsDataFetch
//
//  Created by Sandesh Ramakrishna on 8/15/18.
//  Copyright © 2018 WilburEllis. All rights reserved.
//

import UIKit

public class TrapsDataFetchManager: NSObject {

 @objc open func trapsData(numberOfRows:Int64) -> Array<Any>
    {
        var aTrapsArray:Array<Any> = Array()
        var aNumberOfRows = numberOfRows;
        

        
        while aNumberOfRows != 0 {
            
            let aTrapObject: TrapObject = TrapObject(numberString: String(aNumberOfRows))
            
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
