//
//  EnterVerbViewController.m
//  WorldPlay
//
//  Created by Alex on 10/21/14.
//  Copyright (c) 2014 Alexey Emelyanov. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterNounViewController.h"

@interface EnterVerbViewController ()
//connect UITextField as IBOutlet
@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//decide whether or not to perform segue by checking TextField condition
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if([self.verbTextField.text length] == 0)
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
    EnterNounViewController *nounVC = segue.destinationViewController;
    nounVC.verb = self.verbTextField.text;
    nounVC.name = self.name;
    nounVC.adjective = self.adjective;

}

@end
