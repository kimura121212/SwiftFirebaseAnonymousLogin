//
//  Contents.swift
//  Swift5FirebaseAnonymousLogin
//
//  Created by 木村友紀 on 2020/05/02.
//  Copyright © 2020 木村友紀. All rights reserved.
//

import Foundation

class Contents{
    
    var userNameString:String = ""
    var profileImageString:String = ""
    var contentImagesString:String = ""
    var commentString:String = ""
    var postDateString:String = ""
    
    init(userNameString:String,profileImageString:String,contentImagesString:String,commentString:String,postDateString:String){
        self.userNameString = userNameString
        self.profileImageString = profileImageString
        self.contentImagesString = contentImagesString
        self.commentString = commentString
        self.postDateString = postDateString
        
    }
    
}
