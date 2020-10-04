//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//  All robot commands can be founded in GameViewController.h



class SwiftRobotControlCenter: RobotControlCenter {
    
    //  Level name setup
    override func viewDidLoad() {
        levelName = "L666H"
    //  Level name  L4H/L55H/L555H/L666H
        super.viewDidLoad()
    }
    
    var finish = false
     
    
    override func run() {
        
       makeZebra()
        
    }
    
    func makeZebra(){
        while !finish {
            
            putToBlock()
            put()
            autoRotate()
            safeMove()
            safeMove()
            autoRotate()
            
        }
    }
    
    func putToBlock(){
        while frontIsClear {
            put()
            move()
            
        }
    }
     
    func turnLeft(){
        for _ in 0..<3{
            turnRight()
        }
    }
    
    func autoRotate(){
        if facingRight || (leftIsBlocked && facingDown) {
            turnRight()
        } else {
            turnLeft()
        }
    }
    func safeMove(){
        if frontIsClear {
            move()
        } else {
            finish = true
        }
    }
    

    
}

