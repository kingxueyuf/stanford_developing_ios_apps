#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
	NSArray *rankStrings = @[@"?",@"A",@"2",@"3",@"10",@"J",@"Q",@"K"];

	return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

// + means static function
// - means instance function
@synthesize suit = _suit;// beacuse we provide setter AND getter
+ (NSArray *)validSuits
{
	return @[@"",@"",@"",@""];
}

- (void)setSuit:(NSString *)suit
{
	if( [[PlayingCard validSuits] containsObject:suit]){
		_suit = suit;
	}
}

- (NSString *)suit
{
	return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings
{
	return  @[@"?",@"A",@"2",@"3",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank 
{
	return [[self rankStrings] count] -1; 
}

- (void)setRank:(NSUInteger)rank
{
	if(rank <= [PlayingCard maxRank]){
		_rank = rank;
	}

}
@end