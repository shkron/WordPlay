//
//  EnterNameViewController.m
//  WorldPlay
//
//  Created by Alex on 10/21/14.
//  Copyright (c) 2014 Alexey Emelyanov. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
//connect UITextField as IBOutlet
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

//decide whether or not to perform segue by checking TextField condition
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if([self.nameTextField.text length] == 0)
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
    EnterAdjectiveViewController *adjectiveVC = segue.destinationViewController;
    adjectiveVC.name = self.nameTextField.text;
}

@end
