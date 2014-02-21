#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
	NSString *rankStrings = @[@"?",@"A",@"2",@"3",...,@"10",@"J",@"Q",@"K"];

	return [rankStrings[self.rank] stringByAppendingString:self.suit]; 
}

- (void)setSuit:(NSString *)suit
{
	if([@[@"",@"",@"",@""] containsObject:suit]){
		_suit = suit;
	}
}


- (NSString *)suit
{
	return _suit ? _suit : @"?";
}

@end