//
//  MeowViewController.m
//  randomgiphy
//
//  Created by Rocky on 1/22/17.
//  Copyright © 2017 Rocky. All rights reserved.
//

#import "MeowViewController.h"

@interface MeowViewController ()

@end

@implementation MeowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)goBackBtn:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"thank you, I'm being dismissed");
    }];
    
}
@end
