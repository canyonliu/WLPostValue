//
//  BlockViewController.h
//  postValue
//
//  Created by weixvn on 16/5/26.
//  Copyright © 2016年 weixvn. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^WLBlock) (NSString *postValue);
typedef NSString * (^WNBlock) (NSString *postValue);
@interface BlockViewController : UIViewController
-(void)selReturnBlock:(WLBlock) wlBlock;
-(void)selReturnWnBlock:(WNBlock) wnBlock;
@end
