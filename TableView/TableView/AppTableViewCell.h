//
//  AppTableViewCell.h
//  TableView
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 25/02/15.
//  Copyright (c) 2015 Ckode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *AppImagem;
@property (weak, nonatomic) IBOutlet UILabel *AppNome;
@property (weak, nonatomic) IBOutlet UILabel *AppCategoria;



@end
