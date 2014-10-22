//
//  EnterNounViewController.m
//  WorldPlay
//
//  Created by Alex on 10/21/14.
//  Copyright (c) 2014 Alexey Emelyanov. All rights reserved.
//

#import "EnterNounViewController.h"
#import "ResultsViewController.h"

@interface EnterNounViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nounTextField;

@end

@implementation EnterNounViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(BOOL)shouldPerformSegueWithIdentifier:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([self.nounTextField.text length] == 0)
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
    ResultsViewController *resultsVC = segue.destinationViewController;
    resultsVC.noun = self.nounTextField.text;
    resultsVC.name = self.name;
    resultsVC.adjective = self.adjective;
    resultsVC.verb = self.verb;

}

@end
