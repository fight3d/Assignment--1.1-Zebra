//
//  RobotControlCenter.m
//  Karel
//
//  Created by Ivan Vasilevich on 4/11/14.
//  Copyright (c) 2014 Ivan Vasilevich. All rights reserved.
//


#import "RobotControlCenter.h"

@interface RobotControlCenter ()

@property (nonatomic, weak) RobotControlCenter *robot;

@end

@implementation RobotControlCenter

@synthesize robot = robot;

#define LEVEL_NAME @"L0C"
#define WORLD_LENGHT 14

- (void)viewDidLoad{
    
    robot = self;
//    self.levelName = self.level_Name;
    [super viewDidLoad];
    
}

- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
	dispatch_queue_t queue;
	queue = dispatch_queue_create("com.example.RobotTasksProcessingQueue", NULL);
	dispatch_async(queue, ^{
//		NSLog(@"RobotTasksProcessingQueue");
		[self run];
	});
}

- (IBAction)start {
    [self performTasks];
}



//---------------------------------------------------//

- (void)run{

}

//---------------------------------------------------//



@end
