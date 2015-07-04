//
//  ENRBaseApi.m
//  hAngry
//
//  Created by Enrique Ismael Mendoza Robaina on 4/7/15.
//  Copyright (c) 2015 Enrique Ismael Mendoza Robaina. All rights reserved.
//

#import "ENRBaseApi.h"

@implementation ENRBaseApi

-(void)placeGetRequest:(NSString *)action withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock {

    NSString *urlString = [NSString stringWithFormat:@"%@/%@", URL_API, action];

    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:ourBlock];
}

-(void)placeGetRequestWithURL:(NSString *)action withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock {
    NSString *urlString = [NSString stringWithFormat:@"%@",action];
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:ourBlock];
}

-(void)placePostRequest:(NSString *)action
               withData:(NSDictionary *)dataToSend
            withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock {
    
    NSString *urlString = [NSString stringWithFormat:@"%@/%@", URL_API, action];
    NSLog(@"%@", urlString);
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    // Creamos el JSON desde el data
    NSError *error;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dataToSend options:0 error:&error];
    
    NSString *jsonString;
    if (! jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        
        NSData *requestData = [NSData dataWithBytes:[jsonString UTF8String] length:[jsonString lengthOfBytesUsingEncoding:NSUTF8StringEncoding]];
        
        [request setHTTPMethod:@"POST"];
        [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        [request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[requestData length]] forHTTPHeaderField:@"Content-Length"];
        [request setHTTPBody: requestData];
        
        [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:ourBlock];
    }
}

-(void)placePostRequestWithURL:(NSString *)action withData:(NSDictionary *)dataToSend withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock {
    NSString *urlString = [NSString stringWithFormat:@"%@", action];
    NSLog(@"%@", urlString);

    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    // Creamos el JSON desde el data
    NSError *error;

    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dataToSend options:0 error:&error];
    
    NSString *jsonString;
    if (!jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
 
        NSData *requestData = [NSData dataWithBytes:[jsonString UTF8String] length:[jsonString lengthOfBytesUsingEncoding:NSUTF8StringEncoding]];
        
        [request setHTTPMethod:@"POST"];
        [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [request setValue:@"application/json; charset=UTF-8" forHTTPHeaderField:@"Content-Type"];
        [request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[requestData length]] forHTTPHeaderField:@"Content-Length"];
        [request setHTTPBody: requestData];
        
        [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:ourBlock];
    }
}

-(void)placePutRequest:(NSString *)action withData:(NSDictionary *)dataToSend withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock {
    NSString *urlString = [NSString stringWithFormat:@"%@/%@", URL_API, action];
    NSLog(@"%@", urlString);
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    // Creamos el JSON desde el data
    NSError *error;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dataToSend options:0 error:&error];
    
    NSString *jsonString;
    if (!jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        
        NSData *requestData = [NSData dataWithBytes:[jsonString UTF8String] length:[jsonString lengthOfBytesUsingEncoding:NSUTF8StringEncoding]];
        
        /*NSInteger a = [jsonString lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
        NSInteger b = [jsonString length];
        NSInteger c = [jsonString lengthOfBytesUsingEncoding:NSUnicodeStringEncoding];*/
        
        [request setHTTPMethod:@"PUT"];
        [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [request setValue:@"application/json; charset=UTF-8" forHTTPHeaderField:@"Content-Type"];
        [request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[requestData length]] forHTTPHeaderField:@"Content-Length"];
        [request setHTTPBody: requestData];
        
        [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:ourBlock];
    }
}

-(void)placePutRequestWithURL:(NSString *)action withData:(NSDictionary *)dataToSend withHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))ourBlock {
    NSString *urlString = [NSString stringWithFormat:@"%@", action];
    NSLog(@"%@", urlString);
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    // Creamos el JSON desde el data
    NSError *error;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dataToSend options:0 error:&error];
    
    NSString *jsonString;
    if (!jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        
        NSData *requestData = [NSData dataWithBytes:[jsonString UTF8String] length:[jsonString lengthOfBytesUsingEncoding:NSUTF8StringEncoding]];
        [request setHTTPMethod:@"PUT"];
        [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        [request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[requestData length]] forHTTPHeaderField:@"Content-Length"];
        [request setHTTPBody: requestData];
        
        [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:ourBlock];
    }
}

@end
