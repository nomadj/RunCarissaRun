//
//  ItemController.swift
//  Gravity Runner
//
//  Created by Bryan Albert on 8/9/18.
//  Copyright © 2018 Bryan. All rights reserved.
//

import SpriteKit

class ItemController {
    
    private var minY = CGFloat(-263), maxY = CGFloat(263);
    
    func spawnItems(camera: SKCameraNode) -> SKSpriteNode {
        let item: SKSpriteNode?;
        
        if Int(randomBetweenNumbers(firstNum: 0, secondNum: 10)) >= 6 {
            item = SKSpriteNode(imageNamed: "Rocket");
            item?.name = "Rocket";
            //item?.setScale(0.7); 
            item?.physicsBody = SKPhysicsBody(rectangleOf: (item?.size)!);
        } else {
            item = SKSpriteNode(imageNamed: "Coin");
            item?.name = "Coin";
            item?.physicsBody = SKPhysicsBody(circleOfRadius: (item?.size.height)! / 2);
        }
        
        item!.physicsBody?.affectedByGravity = false;
        item?.physicsBody?.categoryBitMask = ColliderType.ROCKET_AND_COLLECTIBLES;
        item?.zPosition = 4;
        item?.anchorPoint = CGPoint(x: 0.5, y: 0.5);
        
        item?.position.x = camera.position.x + 900;
        item?.position.y = randomBetweenNumbers(firstNum: minY, secondNum: maxY);
        
        return item!;
    }
    
    func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat)
        -> CGFloat {
            return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum);
    }
    
} //class





















