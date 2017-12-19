//
//  MeowViewController.h
//  randomgiphy
//
//  Created by Rocky on 1/22/17.
//  Copyright © 2017 Rocky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeowViewController : UIViewController
- (IBAction)goBackBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *meowImage;

@end
