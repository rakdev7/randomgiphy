//
//  ViewController.m
//  randomgiphy
//
//  Created by Rocky on 1/12/17.
//  Copyright © 2017 Rocky. All rights reserved.
//

#import "ViewController.h"
#import "JSONParser.h"
#import "MeowViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadRandomCatImage];
    // Do any additional setup after loading the view, typically from a nib.
//    
//    if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
//        self.edgesForExtendedLayout = UIRectEdgeNone;

}


- (void) viewWillAppear:(BOOL)animated
{

    NSLog(@"view will appear");

}

- (void)viewDidAppear:(BOOL)animated

{

    NSLog(@"view did appear");

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadRandomCatImage{


    JSONParser *parser = [[JSONParser alloc]initWithURLString:@"http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=dog"];
    
    [parser startHTTPSessionWithCompletion:^(NSError *error, NSArray *results) {
        
        NSURL *gifImageUrl = [NSURL URLWithString:results[0]];
        NSData *gifImageData = [NSData dataWithContentsOfURL:gifImageUrl];
        FLAnimatedImage *animatedImage = [FLAnimatedImage animatedImageWithGIFData:gifImageData];
        [_myImageView setAnimatedImage:animatedImage];
        
    }];


}
-(void) nextPage{

}


- (IBAction)refreshBtn:(id)sender {
    
    [self loadRandomCatImage];
    
    
}

- (IBAction)nextBtn:(id)sender {
    
    
//    MeowViewController *meowViewController = [[MeowViewController alloc]init];
//    
//[meowViewController dismissViewControllerAnimated:YES completion:^{
//    
//}];
//    
//    [self presentViewController:(UIViewController *)meowViewController animated:YES completion:^{
//        
//        
//        
//        UILabel *nextPageLbl;
//        [nextPageLbl drawRect:CGRectMake(50, 50, 200, 200)];
//        nextPageLbl.text = @"This is a new page";
//        
//    }];
    

    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier]isEqualToString:@"second"]) {
        MeowViewController *me = (MeowViewController*)[segue destinationViewController];
        if (me.view) {
            
            [[me meowImage]setImage:[UIImage imageNamed:@"abc.png"]];
            
        }
    }
}
@end
