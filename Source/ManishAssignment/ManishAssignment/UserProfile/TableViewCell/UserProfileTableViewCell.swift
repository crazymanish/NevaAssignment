//
//  UserProfileTableViewCell.swift
//  ManishAssignment
//
//  Created by Manish Rathi on 14/02/19.
//  Copyright © 2019 Manish. All rights reserved.
//

import UIKit

class UserProfileTableViewCell: UITableViewCell {
    @IBOutlet weak var imageViewProfilePicture: CustomImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSkills: UILabel!
}


extension UserProfileTableViewCell {
    // Configure UserProfile Cell.
    func configureUserProfileCell(_ userProfile: UserProfile) {
        // Set Label text
        self.labelName.text = userProfile.name
        self.labelSkills.text = userProfile.skills
        
        // Corner Radius of Image-View
        self.imageViewProfilePicture.layer.cornerRadius = self.imageViewProfilePicture.frame.size.width / 2
        
        //Load Image
        let placeholderImage = UIImage(imageLiteralResourceName: ImageName.noImage)
        self.imageViewProfilePicture.loadImageWithUrl(userProfile.image, placeholderImage: placeholderImage)
    }
}
