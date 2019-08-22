//
//  JRCPost.m
//  RedditObjC
//
//  Created by AlphaDVLPR on 8/22/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

#import "JRCPost.h"

@implementation JRCPost

//initializer to initialize our properties
-(instancetype)initWithTitle:(NSString *)title ups:(NSInteger *)ups commentCount:(NSNumber *)commentCount
{
    self = [super init];
    if (self)
    {
        _title = [title copy];
        _ups = ups;
        _commentCount = [commentCount copy];
    }
    return self;
}
//For now we want our model to be as basic as possible. We want to throw in all the complicated stuff within the controller
//So we are just going to initialize this dictionary within our model
//So access the dictionary
- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    //once we are in the dictionary we are going to go into the data dictionaries that way we can loop through them
    //Get each host from the data key
    NSDictionary *dataDictionary = dictionary[@"data"];
    
    //When your inside the inner-most data dictionary which holds the object that you want to initialize, that is when you can define your property. In this case we are defining Post that come from the Json
    NSString *title = dataDictionary[[JRCPost titleKey] ];
    //Now we can use this title to initialize it.
    NSInteger ups = [dataDictionary[[JRCPost ups]] integerValue];
    NSNumber *commentCount = dataDictionary[[JRCPost commentsCountKey]];
    
    return[self initWithTitle:title ups:ups commentCount:commentCount];
}

//MARK: - keys

+ (NSString *)titleKey
{
    return @"title";
}

+ (NSString *)ups
{
    return @"ups";
}

+ (NSString *)commentsCountKey
{
    return @"num_comments";
}
@end
