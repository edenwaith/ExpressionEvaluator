#import <Foundation/Foundation.h>
#import "PGParser.h"

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		NSString* path = @"/Users/davidthorpe/pg_hba.conf";
		NSError* error = nil;
		PGParser* parser = [PGParser parserWithStateMachine:@"/Users/davidthorpe/pg_hba.conf" error:&error];
		if(error) {
			NSLog(@"Error: %@",[error localizedDescription]);
			return -1;
		}
		NSArray* tokens = [parser tokenizeFile:path error:&error];
		if(error) {
			fprintf(stderr,"Error = %s",[[error localizedDescription] UTF8String]);
		}
		if(tokens) {
			fprintf(stderr,"Tokens = %s",[[tokens description] UTF8String]);
		}
	}
    return 0;
}
