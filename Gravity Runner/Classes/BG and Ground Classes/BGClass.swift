//
//  BGClass.swift
//  Gravity Runner
//
//  Created by Bryan Albert on 8/8/18.
//  Copyright © 2018 Bryan. All rights reserved.
//

import SpriteKit

class BGClass: SKSpriteNode {
    
    func moveBG(camera: SKCameraNode) {
        if self.position.x + self.size.width < camera.position.x {            
            self.position.x += self.size.width * 3;
        }
    }
}
