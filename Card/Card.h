#import <Foundation/Foundation.h>

@interface Card: NSOjbect

@property (strong,nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;

@property (nonatomic,getter = isMatched) BOOL matched;

-(int)match:(Card *)otherCards;