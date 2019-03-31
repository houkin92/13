//
//  ImageInfo.swift
//  集合视图
//
//  Created by 方瑾 on 2019/2/27.
//  Copyright © 2019 方瑾. All rights reserved.
//

import Foundation
//照片相关信息类型
struct ImageInfo {
    var name      : String?   //人物名字
    var imageName : String?//
    
    init(name:String ,imageName:String ) {
        self .name     =  name
        self.imageName = imageName
    }
}
