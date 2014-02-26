//
//  CardGameViewController.m
//  Matchismo
//
//  Created by yufanxue on 2/21/14.
//  Copyright (c) 2014 yufanxue. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLable;
@property (nonatomic) int flipCount;
@property (nonatomic , strong) Deck *deck;
@end

@implementation CardGameViewController

-(Deck *)deck{
    if(!_deck)_deck = [self createDeck];
    return _deck;
}

-(Deck *)createDeck{
    return [[PlayingCardDeck alloc]init ];
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLable.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"flipCount = %d",self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
//    UIImage *cardImage = [UIImage imageNamed:@"cardback"];
    if([sender.currentTitle length])
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];

    }
    
    self.flipCount++;
}


@end
