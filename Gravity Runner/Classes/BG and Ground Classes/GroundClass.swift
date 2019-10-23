//
//  GroundClass.swift
//  Gravity Runner
//
//  Created by Bryan Albert on 8/8/18.
//  Copyright © 2018 Bryan. All rights reserved.
//

import SpriteKit

class GroundClass: SKSpriteNode {
    
    func initializeGroundAndFloor(){
        physicsBody = SKPhysicsBody(rectangleOf: self.size);
        physicsBody?.affectedByGravity = false;
        physicsBody?.isDynamic = false;
        physicsBody?.categoryBitMask = ColliderType.GROUND
    }
    
    func moveGroundsOrFloors(camera: SKCameraNode) {
        if self.position.x + self.size.width < camera.position.x {            
            self.position.x += self.size.width * 3;
        }
    }
} // class
