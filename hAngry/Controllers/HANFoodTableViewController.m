//
//  HANFoodTableViewController.m
//  hAngry
//
//  Created by Enrique Ismael Mendoza Robaina on 12/7/15.
//  Copyright © 2015 Atlanpix SLU. All rights reserved.
//

#import "HANFoodTableViewController.h"
#import "HANFood.h"
#import "HANFoodViewController.h"

@interface HANFoodTableViewController ()

@end

@implementation HANFoodTableViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.title = @"hAngry";
    
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                            target:self
                                                                            action:@selector(addFood:)];
    
    self.navigationItem.rightBarButtonItem = button;
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
}

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
    cell.detailTextLabel.text = food.type.name;//[fmt stringFromDate:food.modificationDate];
    
    return cell;
}

-(void)tableView:(nonnull UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    HANFood *selected = [self.fetchedResultsController objectAtIndexPath:indexPath];
    HANFoodViewController *vc = [[HANFoodViewController alloc] initWithFood:selected];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)tableView:(nonnull UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    if(editingStyle == UITableViewCellEditingStyleDelete){
        HANFood *del = [self.fetchedResultsController objectAtIndexPath:indexPath];
        
        [self.fetchedResultsController.managedObjectContext deleteObject:del];
    }
}

-(void)addFood:(id)sender{
    HANFood *food = [HANFood foodWithName:@"New food"
                   foodId:nil
                     type:nil
                  context:self.fetchedResultsController.managedObjectContext];
    NSLog(@"Log");
}

@end
