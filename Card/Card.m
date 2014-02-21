#import "Card.h"

@interface Card()

@end

@implementation Card

-(int)match:(Card*)otherCards
{
	int score = 0;
	for(Card *card in otherCards)
	{
		if([card.contents isEqualToString:self.contents])
		{
			score =1 ;
		}
	}
	return score;
}


// @synthesize contents = _contents;

// @synthesize chosen = _chosen;

// @synthesize matched = _matched;

// - (NSString *)contents
// {
// 	return _contents;
// }

// - (void)setContents:(NSString *)contents
// {
// 	_contents = contents;
// }

// - (BOOL) isChosen
// {
// 	return _chosen;
// }
// -(void)setChosen:(BOOL)chosen
// {
// 	_chosen = chosen;
// }

// -(BOOL)isMatched
// {
// 	return _matched;
// }

// -(void)setMatched:(BOOL)matched
// {
// 	_matched = matched;
// }
