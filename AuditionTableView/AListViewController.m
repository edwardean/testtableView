//
//  AListViewController.m
//  AuditionTableView
//
//  Created by 贾玉辉 on 13-5-16.
//  Copyright (c) 2013年 Audition. All rights reserved.
//

#import "AListViewController.h"

///-------------------
/// 测试数据
///-------------------
#if 0
static NSString * const kHeaderModelTitleContent = @"手机 QQ 2013（4.0 版）的联系人头像全点亮，QQ 产品团队做这个决定是出于什么考虑？";
static NSString * const kHeaderModelDesContent = @"腾讯最新发布的手机 QQ，不管是联系人，还是「动态」里面的「在线好友」，头像全都是亮着的。由于导致不好区分好友在线还是离线，许多用户吐槽新版。然而，任何一个产品功能的调整，都应该有背后的产品理念做为支持。那么，新版手机 QQ 产品经理是怎么考虑的？非手机 QQ 产品相关的朋友，如果想发表观点，可以在下面这些相关问题发表观点:反驳已有答案的不同观点也应该作为答案的评论提交，避免出现答非所问的情况。谢谢！";
#else 
static NSString * const kHeaderModelTitleContent = @"哪类应用的用户日活跃度最高？";
static NSString * const kHeaderModelDesContent = @"活跃度高到什么程度？有什么可借鉴的经验？";
#endif

@interface AListViewController ()

@end

@implementation AListViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDatasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *cellIdentifier = @"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  
  if(cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
  }
  
  cell.textLabel.text = [NSString stringWithFormat:@"Cell %d", indexPath.row];
  
  return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  
}

@end
