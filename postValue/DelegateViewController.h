//
//  DelegateViewController.h
//  postValue
//
//  Created by weixvn on 16/5/26.
//  Copyright © 2016年 weixvn. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WLDelegate <NSObject>

-(void)postValue: (NSString *)postValue;

-(NSString *)postValueWithStr: (NSString *)postValue;

@end
@interface DelegateViewController : UIViewController
@property(nonatomic,weak) id <WLDelegate> delegate;

@end
