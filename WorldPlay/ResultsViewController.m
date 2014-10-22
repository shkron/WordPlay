//
//  ResultsViewController.m
//  WorldPlay
//
//  Created by Andrew Liu on 10/21/14.
//  Copyright (c) 2014 Alexey Emelyanov. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultsTextView.text = [NSString stringWithFormat:@"%@ was working hard on %@ code challenge of the second day made by Mobile Makers", self.name, self.adjective];

}



@end
