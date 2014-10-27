//
//  EnterAdjectiveViewController.m
//  WorldPlay
//
//  Created by Alex on 10/21/14.
//  Copyright (c) 2014 Alexey Emelyanov. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterVerbViewController.h"

@interface EnterAdjectiveViewController ()
//connect UITextField as IBOutlet
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

//decide whether or not to perform segue by checking TextField condition
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if([self.adjectiveTextField.text length] == 0)
    {
        return NO;
    }
    else
    {
        return YES;
    }
}

//perform segue by clicking button and pass data to next ViewController
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterVerbViewController *verbVC = segue.destinationViewController;
    verbVC.adjective = self.adjectiveTextField.text;
    verbVC.name = self.name;
}

@end
