//
//  YPViewController.h
//  YPLoginSample
//
//  Created by Jacopo Sanguineti on 10/06/14.
//  Copyright (c) 2014 YouPers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YPViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *loginField;
@property (weak, nonatomic) IBOutlet UITextField *pwdField;
@property (nonatomic, retain) UIActivityIndicatorView *loadingIndicator;

- (IBAction)callLoginApi:(id)sender;
- (IBAction)backgroundIsTapped:(id)sender;

@end
