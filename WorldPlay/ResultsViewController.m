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



    NSString *resultString = [NSString stringWithFormat:@"%@ was working hard on %@ code challenge of the second day made by Mobile Makers. I %@ some %@ :)", self.name, self.adjective, self.verb, self.noun];

    
    NSMutableAttributedString *attributedResultString = [[NSMutableAttributedString alloc] initWithString:resultString];

    [attributedResultString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:[UIFont systemFontSize]] range:[resultString rangeOfString:self.name]];

    [attributedResultString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:[UIFont systemFontSize]] range:[resultString rangeOfString:self.adjective]];


    [attributedResultString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:[UIFont systemFontSize]] range:[resultString rangeOfString:self.verb]];

    [attributedResultString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:[UIFont systemFontSize]] range:[resultString rangeOfString:self.noun]];

    



    self.resultsTextView.attributedText = attributedResultString;
}



@end
