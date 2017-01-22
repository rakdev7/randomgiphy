//
//  ViewController.m
//  randomgiphy
//
//  Created by Rocky on 1/12/17.
//  Copyright © 2017 Rocky. All rights reserved.
//

#import "ViewController.h"
#import "JSONParser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JSONParser *parser = [[JSONParser alloc]initWithURLString:@"http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=cat"];
    
    [parser startHTTPSessionWithCompletion:^(NSError *error, NSArray *results) {
        
        
        NSURL *gifImageUrl = [NSURL URLWithString:results[0]];
        NSData *gifImageData = [NSData dataWithContentsOfURL:gifImageUrl];
        FLAnimatedImage *animatedImage = [FLAnimatedImage animatedImageWithGIFData:gifImageData];
        [_myImageView setAnimatedImage:animatedImage];
        
        
        
        
    }];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
