//
//  ViewController.h
//  randomgiphy
//
//  Created by Rocky on 1/12/17.
//  Copyright © 2017 Rocky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FLAnimatedImage/FLAnimatedImage.h>


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet FLAnimatedImageView *myImageView;
- (void)loadRandomCatImage;
-(void)nextPage;
- (IBAction)refreshBtn:(id)sender;
- (IBAction)nextBtn:(id)sender;
@end

