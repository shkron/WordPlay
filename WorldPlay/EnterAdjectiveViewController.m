//
//  EnterAdjectiveViewController.m
//  WorldPlay
//
//  Created by Alex on 10/21/14.
//  Copyright (c) 2014 Alexey Emelyanov. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjectiveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultsViewController *resultsVC = segue.destinationViewController;
    
}

@end
