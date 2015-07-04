//
//  ModelController.h
//  hAngry
//
//  Created by Enrique Ismael Mendoza Robaina on 4/7/15.
//  Copyright © 2015 Atlanpix SLU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end

