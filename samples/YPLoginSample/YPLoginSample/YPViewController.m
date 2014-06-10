//
//  YPViewController.m
//  YPLoginSample
//
//  Created by Jacopo Sanguineti on 10/06/14.
//  Copyright (c) 2014 YouPers. All rights reserved.
//

#import "YPViewController.h"
#import <QuartzCore/QuartzCore.h>

#import "YPApiClient.h"
#import "YPLoginApi.h"

@interface YPViewController ()

@end

@implementation YPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backgroundIsTapped:(id)sender
{
    [_loginField resignFirstResponder];
    [_pwdField resignFirstResponder];
    
}

- (IBAction)callLoginApi:(id)sender
{
    UIAlertView *alert;
    
    if([_loginField.text length]==0)
    {
        alert = [[UIAlertView alloc] initWithTitle:@"Attention" message:@"The login field is empty" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }
    else if([_pwdField.text length]==0)
    {
        alert = [[UIAlertView alloc] initWithTitle:@"Attention" message:@"The password field is empty" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        _loadingIndicator= [[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
        _loadingIndicator.layer.cornerRadius = 05;
        _loadingIndicator.opaque = NO;
        _loadingIndicator.backgroundColor = [UIColor colorWithWhite:0.0f alpha:0.8f];
        _loadingIndicator.center = self.view.center;
        _loadingIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        [_loadingIndicator setColor:[UIColor colorWithRed:0.6 green:0.8 blue:0.8 alpha:1.0]];
        [self.view addSubview: _loadingIndicator];
        [_loadingIndicator startAnimating];
        
        YPApiClient* client = [YPApiClient sharedClientFromPool:@"http://localhost:8000"];
        [client setAuthorizationHeaderWithUsername:_loginField.text password:_pwdField.text];
        
        YPLoginApi * api = [[YPLoginApi alloc] init];
        [api loginWithCompletionBlock:nil completionHandler:^(YPUser *output, NSError *error)
        {
            [_loadingIndicator stopAnimating];
         
            UIAlertView *alert;
            if(error)
            {
                alert = [[UIAlertView alloc] initWithTitle:@"Attention" message:@"Authentication failed" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
            }
            else
            {
                alert = [[UIAlertView alloc] initWithTitle:@"Welcome" message:[NSString stringWithFormat:@"Hello %@", output.fullname] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
            }
            
            [alert show];
        }];
    }
}

#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
	[textField resignFirstResponder];
    
	return YES;
    
}

#pragma mark AlertViewDelegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

@end
