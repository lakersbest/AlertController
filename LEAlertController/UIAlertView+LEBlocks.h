

#import <UIKit/UIKit.h>

typedef void (^UIAlertViewBlock)(UIAlertView *alertView);
typedef void (^UIAlertViewCompletionBlock)(UIAlertView *alertView, NSInteger buttonIndex);

@interface UIAlertView (LEBlocks)

@property (nonatomic, copy) UIAlertViewBlock didPresentBlock;
@property (nonatomic, copy) UIAlertViewCompletionBlock clickedButtonBlock;

@end
