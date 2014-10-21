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

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterAdjectiveViewController *adjectiveVC = segue.destinationViewController;
    adjectiveVC.name = self.nameTextField.text;
}


@end
