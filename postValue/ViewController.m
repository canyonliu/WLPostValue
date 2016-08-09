//
//  ViewController.m
//  postValue
//
//  Created by weixvn on 16/5/26.
//  Copyright © 2016年 weixvn. All rights reserved.
//

#import "ViewController.h"
#import "DelegateViewController.h"
#import "BlockViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _myTableView = [[UITableView alloc]init];
    _myTableView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    _myTableView.dataSource = self;
    _myTableView.delegate = self;
//    _myTableView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_myTableView];
    
    
    //测试自动集成工具
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark datasource

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    if(!cell){
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    }
    if(indexPath.row == 0){
    cell.textLabel.text = @"通过block来进行传值";
    }
    else if(indexPath.row == 1){
        cell.textLabel.text = @"通过delegate传值";
    }
    
    return cell;
}

-(NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  2;
}



#pragma mark  delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 0){
        BlockViewController *blockVC = [[BlockViewController alloc]init];
        [blockVC selReturnBlock:^(NSString *postValue) {
            NSLog(@"block传过来的值 %@",postValue);
        }];
        
        [blockVC selReturnWnBlock:^NSString *(NSString *postValue) {
            NSLog(@"wnblock传过来的值 %@",postValue);
            return @"我是VC";
        }];
        
        [self.navigationController pushViewController:blockVC animated:YES];
    }
    else if(indexPath.row == 1){
        DelegateViewController *delegateVC = [[DelegateViewController alloc]init];
        delegateVC.delegate = self;
        //[self postValue:@"123"];
        [self.navigationController pushViewController:delegateVC animated:YES];
}

}

-(void)postValue: (NSString *)postValue{
    NSLog(@"postValue = %@",postValue);
//    postValue =
}


-(NSString *)postValueWithStr: (NSString *)postValue{
   NSLog(@"postValue = %@",postValue);
    return @"lqc";
}



@end
