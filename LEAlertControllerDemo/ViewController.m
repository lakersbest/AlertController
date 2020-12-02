

#import "ViewController.h"
#import "LEAlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTouchOnAlertButton:(id)sender
{
    LEAlertController *alertController = [LEAlertController alertControllerWithTitle:@"預設樣板" message:@"一個標準的警告訊息" preferredStyle:LEAlertControllerStyleAlert];
    
    LEAlertAction *cancelAction = [LEAlertAction actionWithTitle:@"取消" style:LEAlertActionStyleCancel handler:^(LEAlertAction *action) {
        // handle cancel button action
        NSLog(@"按下取消");
    }];
    [alertController addAction:cancelAction];
    
    LEAlertAction *defaultAction = [LEAlertAction actionWithTitle:@"OK" style:LEAlertActionStyleDefault handler:^(LEAlertAction *action) {
        // handle default button action
        NSLog(@"預設按下按鈕");
    }];
    [alertController addAction:defaultAction];
    
    [self presentAlertController:alertController animated:YES completion:nil];
}

- (IBAction)didTouchOnActionSheetButton:(id)sender
{
    LEAlertController *alertController = [LEAlertController alertControllerWithTitle:nil message:@"一個標準的表格" preferredStyle:LEAlertControllerStyleActionSheet];
    
    LEAlertAction *destructiveAction = [LEAlertAction actionWithTitle:@"清除" style:LEAlertActionStyleDestructive handler:^(LEAlertAction *action) {
        // handle destructive button action
        NSLog(@"按下清除按鈕");
    }];
    [alertController addAction:destructiveAction];
    
    LEAlertAction *defaultAction = [LEAlertAction actionWithTitle:@"OK" style:LEAlertActionStyleDefault handler:^(LEAlertAction *action) {
        // handle default button action
        NSLog(@"按下預設按鈕");
    }];
    [alertController addAction:defaultAction];
    
    LEAlertAction *cancelAction = [LEAlertAction actionWithTitle:@"取消" style:LEAlertActionStyleCancel handler:^(LEAlertAction *action) {
        // handle cancel button action
        NSLog(@"按下取消按鈕");
    }];
    [alertController addAction:cancelAction];
    
    [self presentAlertController:alertController animated:YES completion:nil];
}

@end
