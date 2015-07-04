//
//  ENRBaseApi.h
//  hAngry
//
//  Created by Enrique Ismael Mendoza Robaina on 4/7/15.
//  Copyright (c) 2015 Enrique Ismael Mendoza Robaina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ENRBaseApi : NSObject

-(void)placeGetRequest:(NSString *)action
           withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock;

-(void)placeGetRequestWithURL:(NSString *)action
                  withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock;


-(void)placePostRequest:(NSString *)action
               withData:(NSDictionary *)dataToSend
            withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock;

-(void)placePostRequestWithURL:(NSString *)action
                      withData:(NSDictionary *)dataToSend
                   withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock;


-(void)placePutRequest:(NSString *)action
              withData:(NSDictionary *)dataToSend
           withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock;

-(void)placePutRequestWithURL:(NSString *)action
                     withData:(NSDictionary *)dataToSend
                  withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock;

//TODO placeDeleteRequest

@end
