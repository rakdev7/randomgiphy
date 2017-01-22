//
//  JSONParser.m
//  AsyncImageFetchSample
//
//  Created by Rocky on 1/12/17.
//  Copyright © 2017 Rocky. All rights reserved.
//
#import "JSONParser.h"
#import <AFNetworking/AFNetworking.h>

@interface JSONParser ()
@property(strong,nonatomic)NSString *serviceURL;

@end
@implementation JSONParser
-(instancetype)initWithURLString:(NSString *)urlString
{
    if (self=[super init]) {
        self.serviceURL=urlString;
    }

    return self;
}
-(void)startHTTPSessionWithCompletion:(void (^)(NSError *, NSArray *))completionBlock
{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:self.serviceURL parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSMutableArray *urlArray=[[NSMutableArray alloc]init];
        NSDictionary *dataDict=[responseObject objectForKey:@"data"];
     
            [urlArray addObject:[dataDict objectForKey:@"image_original_url"]];
        
        completionBlock(nil,urlArray);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completionBlock(error,nil);
    }];
}
@end
