//
//  HANFoodTableViewController.m
//  hAngry
//
//  Created by Enrique Ismael Mendoza Robaina on 12/7/15.
//  Copyright © 2015 Atlanpix SLU. All rights reserved.
//

#import "HANFoodTableViewController.h"
#import "HANFood.h"

@interface HANFoodTableViewController ()

@end

@implementation HANFoodTableViewController

-(UITableViewCell *)tableView:(nonnull UITableView *)tableView
        cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{

    // Get the element
    HANFood *food = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    
    // Create cell
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if(cell==nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }

    // Sync model with cell
    cell.textLabel.text = [food name];
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    cell.detailTextLabel.text = [fmt stringFromDate:food.updateDate];
    
    return cell;
}

@end
