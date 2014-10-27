//
//  ResultsViewController.m
//  WorldPlay
//
//  Created by Andrew Liu on 10/21/14.
//  Copyright (c) 2014 Alexey Emelyanov. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
//connect UITextView as IBOutlet
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//
    NSMutableAttributedString *resultString = [[NSMutableAttributedString alloc]init];
    NSDictionary *bold = @{NSFontAttributeName: [UIFont boldSystemFontOfSize:[UIFont systemFontSize]]};
    NSAttributedString *nameString = [[NSAttributedString alloc] initWithString:self.name attributes:bold];
    [resultString appendAttributedString:nameString];
    NSAttributedString *afterNameString = [[NSAttributedString alloc] initWithString:@" was working hard on " attributes:nil];
    [resultString appendAttributedString:afterNameString];
    NSAttributedString *adjectiveString = [[NSAttributedString alloc] initWithString:self.adjective attributes:bold];
    [resultString appendAttributedString:adjectiveString];
    NSAttributedString *afterAdjectiveString = [[NSAttributedString alloc] initWithString:@" code challenge made by Mobile Makers on the second day. Someone " attributes:nil];
    [resultString appendAttributedString:afterAdjectiveString];
    NSAttributedString *verbString = [[NSAttributedString alloc] initWithString:self.verb attributes:bold];
    [resultString appendAttributedString:verbString];
    NSAttributedString *afterVerbString = [[NSAttributedString alloc] initWithString:@" some " attributes:nil];
    [resultString appendAttributedString:afterVerbString];
    NSAttributedString *nounString = [[NSAttributedString alloc] initWithString:self.noun attributes:bold];
    [resultString appendAttributedString:nounString];
    NSAttributedString *afterNounString = [[NSAttributedString alloc] initWithString:@" exciting." attributes:nil];
    [resultString appendAttributedString:afterNounString];
    self.resultsTextView.attributedText = resultString;
}

@end
