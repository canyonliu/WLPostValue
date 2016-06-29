//
//  BlockViewController.m
//  postValue
//
//  Created by weixvn on 16/5/26.
//  Copyright © 2016年 weixvn. All rights reserved.
//

#import "BlockViewController.h"

@interface BlockViewController ()
@property (weak, nonatomic) IBOutlet UITextField *blockText;
@property (weak, nonatomic) IBOutlet UIButton *blockBtn;

- (IBAction)blockBtnClick:(id)sender;
@property(nonatomic ,copy)WLBlock block;
@property(nonatomic ,copy)WNBlock wnblock;
@end

@implementation BlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)selReturnBlock:(WLBlock) wlBlock{
    self.block = wlBlock;
}

-(void)selReturnWnBlock:(WNBlock) wnBlock{
    self.wnblock = wnBlock;
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

- (IBAction)blockBtnClick:(id)sender {
    self.block(self.blockText.text);
    
    NSString *str =  self.wnblock(self.blockText.text);
    NSLog(@"wnblock == %@",str);
    
//    self.block = ^(NSString *str){
//        
//    };
}
@end
