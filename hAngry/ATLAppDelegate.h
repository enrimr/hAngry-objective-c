//
//  AppDelegate.h
//  hAngry
//
//  Created by Enrique Ismael Mendoza Robaina on 4/7/15.
//  Copyright © 2015 Atlanpix SLU. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ENRSimpleCoreDataStack;

@interface ATLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ENRSimpleCoreDataStack *model;


@end

