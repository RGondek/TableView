//
//  AppDetailsViewController.m
//  TableView
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 25/02/15.
//  Copyright (c) 2015 Ckode. All rights reserved.
//

#import "AppDetailsViewController.h"
#import "AppTableViewController.h"

@interface AppDetailsViewController ()

@end

@implementation AppDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _AppFuncionando = [[NSMutableArray alloc]initWithObjects:@"fimg01.png", @"fimg02.png", @"fimg03.png", @"fimg04.png", @"fimg05.png",@"fimg06.png",nil];
    
    _Appdescricao = [[NSMutableArray alloc]initWithObjects:@"Manter-se em contatos com amigos está mais rápido que nunca. Receba notificações quando seus amigos curtem e comentam publicações.", @"Junte-se a dois bravos pontos que atravessam tundras artícas, navegam por selvas em fogo e mergulham nas rofundezas do oceano.", @"O Spotify é o melhor para ouvir música no celular ou no tablet. Busque qualquer faixa, artista oou albúm e ouça de graça.", @"O jogo mais doce de todos os tempos. Encare esa saga deliciosamente doce por conta propria ou jogue com os amigos para ver quem consegue mais pontos.", @"O WhatsApp Messenger é um mensageiro para smartphones. Utiliza a sua conexão 3G ou WI-FI para enviar mensagens para seus amigos e família.",@"Shazam é a melhor maneira para identificar música em TV. Em, segundos você saberá o nome de qualquer música ou mais sobre o que estiver assistindo.",nil];
    
    
    [_nomeApp setText:[_detalhes objectAtIndex:0]];
    [_categoriaApp setText:[_detalhes objectAtIndex:1]];
    [_imagemApp setImage:[UIImage imageNamed:[_detalhes objectAtIndex:2]]];
    [_descricaoApp setText:[_Appdescricao objectAtIndex:_ind]];
    [_imagemDetalhadaApp setImage:[UIImage imageNamed:[_AppFuncionando objectAtIndex:_ind]]];
    
    
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
