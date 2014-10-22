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

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(BOOL)shouldPerformSegueWithIdentifier:(UIStoryboardSegue *)segue sender:(id)sender
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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterVerbViewController *verbVC = segue.destinationViewController;
    verbVC.adjective = self.adjectiveTextField.text;
    verbVC.name = self.name;
    
}

@end
