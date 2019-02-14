//
//  BaseModel.swift
//  ManishAssignment
//
//  Created by Manish Rathi on 14/02/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import Foundation

/**
 The `BaseModel` protocol. All model(s) should inherit from this protocol.
 
 */
public protocol BaseModel: Codable {}



/**
 The `BaseModel` Extension.
 Input: A `Dictionary` or `ApiResponse` which Return a JSON Object.
 Output: A `BaseModel` instance.
 
 */
extension BaseModel {
    
    /**
     Init model by using `Dictionary` as Input.
     
     @return BaseModel instance or nil.
     
     */
    public static func initWithDictionary<T: BaseModel>(_ dictionary: [String: Any]) -> T? {
        do {
            let data = try JSONSerialization.data(withJSONObject: dictionary, options: [])
            return initWithData(data)
        } catch {
            return nil
        }
    }
    
    /**
     Init model by using `ApiResponse` as Input.
     
     @return BaseModel instance or nil.
     
     */
    public static func initWithResponse<T: BaseModel>(_ response: ApiResponse) -> T? {
        guard let data = response.data else {
            print("Response data is nil.")
            return nil
        }
        return initWithData(data)
    }
    
    
    /**
     Init model by using `Data` as Input.
     
     @return BaseModel instance or nil.
     
     */
    public static func initWithData<T: BaseModel>(_ data: Data) -> T? {
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch let error {
            print("Error in JSONDecoder().decode:", error)
            return nil
        }
    }
}
