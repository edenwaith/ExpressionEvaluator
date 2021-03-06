
#import <Foundation/Foundation.h>
#import "PTNode.h"

@interface FunctionNode : PTNode {
	NSString* _name;
	NSArray* _nodes;
}

// constructor
-(id)initWithName:(NSString* )name nodes:(NSArray* )nodes;

// properties
@property (readonly,retain) NSString* name;
@property (readonly,retain) NSArray* nodes;

@end
