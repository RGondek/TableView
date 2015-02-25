//
//  AppDetailsViewController.m
//  TableView
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 25/02/15.
//  Copyright (c) 2015 Ckode. All rights reserved.
//

#import "AppDetailsViewController.h"

@interface AppDetailsViewController ()

@end

@implementation AppDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_nomeApp setText:[_detalhes objectAtIndex:0]];
    [_categoriaApp setText:[_detalhes objectAtIndex:1]];
    [_imagemApp setImage:[UIImage imageNamed:[_detalhes objectAtIndex:2]]];
    
    
    // Do any additional setup after loading the view.
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

- (IBAction)botaoVoltar:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end