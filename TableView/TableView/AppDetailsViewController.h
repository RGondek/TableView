//
//  AppDetailsViewController.h
//  TableView
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 25/02/15.
//  Copyright (c) 2015 Ckode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDetailsViewController : UIViewController

@property NSArray *detalhes;
@property NSUInteger ind;
@property NSMutableArray *AppFuncionando;
@property NSMutableArray *Appdescricao;

@property (weak, nonatomic) IBOutlet UIImageView *imagemApp;
@property (weak, nonatomic) IBOutlet UILabel *nomeApp;
@property (weak, nonatomic) IBOutlet UILabel *categoriaApp;

@property (weak, nonatomic) IBOutlet UIImageView *imagemDetalhadaApp;
@property (weak, nonatomic) IBOutlet UILabel *descricaoApp;
- (IBAction)botaoVoltar:(id)sender;


@end
