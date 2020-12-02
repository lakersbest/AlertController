
#import <UIKit/UIKit.h>

typedef void (^UIActionSheetBlock)(UIActionSheet *actionSheet);
typedef void (^UIActionSheetCompletionBlock)(UIActionSheet *actionSheet, NSInteger buttonIndex);

@interface UIActionSheet (LEBlocks)

@property (nonatomic, copy) UIActionSheetBlock didPresentBlock;
@property (nonatomic, copy) UIActionSheetCompletionBlock clickedButtonBlock;

@end
