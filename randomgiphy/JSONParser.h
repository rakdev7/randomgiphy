//
//  JSONParser.h
//  AsyncImageFetchSample
//
//  Created by Rocky on 07/05/16.
//  Copyright © 2017 MyCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSONParser : NSObject
-(instancetype)initWithURLString:(NSString *)urlString;
-(void)startHTTPSessionWithCompletion:(void (^)(NSError *error,NSArray *results))completionBlock;
@end
