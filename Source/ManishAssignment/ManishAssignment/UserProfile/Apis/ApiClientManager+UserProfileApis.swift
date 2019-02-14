//
//  ApiClientManager+UserProfileApis.swift
//  ManishAssignment
//
//  Created by Manish Rathi on 14/02/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import Foundation

/**
 User Profile Api(s).
 These Api request(s) will be Async request, completionBlock will called when request will finish.
 
 */
extension ApiClientManager {
    
    /**
     Fetch User Profile Api: Fetch User Profile from Server.
     
     */
    func fetchUserProfiles(completionBlock: @escaping (UserProfileResponseModel?, Error?) -> Void) {
        // Create Instance of `Get UserProfiles Api Request`
        let userProfileRequest = GetUserProfilesApiRequest()
        
        // Call "GET" UserProfile Api.
        self.get(userProfileRequest) { (response) in
            if response.isValid {
                completionBlock(UserProfileResponseModel.initWithResponse(response), response.error)
            } else {
                completionBlock(nil, response.error)
            }
        }
    }
    
    
    
    /**
     TODO: Write here more User Profile related Api(s).
     
     */
}
