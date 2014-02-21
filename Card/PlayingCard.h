#import "Card.h"

@interface PlayingCard : Card


@property (strong,nonatomic) NSString *suit; // 花色

@property (nonatomic) NSUInteger rank;//64 bits int

@end