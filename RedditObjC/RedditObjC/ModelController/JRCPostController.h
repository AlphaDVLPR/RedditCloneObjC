//
//  JRCPostController.h
//  RedditObjC
//
//  Created by AlphaDVLPR on 8/22/19.
//  Copyright © 2019 AlphaDVLPR. All rights reserved.
//

#import <Foundation/Foundation.h>

//First we need to have a class
@class JRCPost;

@interface JRCPostController : NSObject

//In the controller we want to have a shared controller
+ (instancetype)sharedController;

//Next we want to fetch our information
//Make sure if we are using swift we want to specify the type by using lightweight generics
- (void)searchForPostWithSearchTerm: (NSString *)searchTerm completion:(void(^) (NSArray<JRCPost *> *posts, NSError *error))completion;

@end

