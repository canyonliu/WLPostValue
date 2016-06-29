//
//  DelegateViewController.m
//  postValue
//
//  Created by weixvn on 16/5/26.
//  Copyright © 2016年 weixvn. All rights reserved.
//

#import "DelegateViewController.h"

@interface DelegateViewController ()
@property (weak, nonatomic) IBOutlet UITextField *delegateText;

- (IBAction)delegateBtn:(id)sender;
@end

@implementation DelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//
//-(void)postValue: (NSString *)postValue{
////    if([_delegate respondsToSelector:@selector(postValue:)]){
////        self.delegateText.text = postValue;
////    }
//
//}

- (IBAction)delegateBtn:(id)sender {
    if([_delegate respondsToSelector:@selector(postValue:)]){
        //self.delegateText.text = @"123";
        [self.delegate postValue:self.delegateText.text];
    }
    
    if([self.delegate respondsToSelector:@selector(postValueWithStr:)]){
        NSString *str = [self.delegate postValueWithStr:self.delegateText.text];
        NSLog(@"===%@",str);
    }
}
@end
