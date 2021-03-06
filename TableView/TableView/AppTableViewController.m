//
//  AppTableViewController.m
//  TableView
//
//  Created by Leonardo Rodrigues de Morais Brunassi on 25/02/15.
//  Copyright (c) 2015 Ckode. All rights reserved.
//

#import "AppTableViewController.h"
#import "AppTableViewCell.h"
#import "AppDetailsViewController.h"

@interface AppTableViewController ()

@end

@implementation AppTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIEdgeInsets inset = UIEdgeInsetsMake(25, 0, 0, 0);
    self.tableView.contentInset = inset;
    
    _appNome = [[NSMutableArray alloc] initWithObjects:@"Facebook", @"TwoDots", @"Spotify", @"Candy Crush", @"WhatsApp", @"Shazam", nil];
    _appCategoria = [[NSMutableArray alloc] initWithObjects:@"Redes Sociais", @"Jogos", @"Música", @"Jogos", @"Redes Sociais", @"Música", nil];
    _appImg = [[NSMutableArray alloc] initWithObjects:@"img01.png", @"img02.png", @"img03.png", @"img04.png", @"img05.png",@"img06.png",nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return _appNome.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    AppTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AppCelula" forIndexPath:indexPath];
    
    long row = [indexPath row];
    
    
    
    [cell.AppNome setText:_appNome[row]];
    [cell.AppImagem setImage:[UIImage imageNamed:_appImg[row]]];
    [cell.AppCategoria setText:_appCategoria[row]];
    
    // Configure the cell...
    
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [_appNome removeObjectAtIndex:[indexPath row]];
    [_appCategoria removeObjectAtIndex:[indexPath row]];
    [_appImg removeObjectAtIndex:[indexPath row]];
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


//// Override to support rearranging the table view.
//- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
//    
//    NSString *stringParaMudar = [self.]
//}


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"ShowAppDetails"]) {
       [segue destinationViewController];
        
        AppDetailsViewController *details = (AppDetailsViewController *) segue.destinationViewController;
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        long row = [indexPath row];
        
        details.detalhes =  [[NSArray alloc] initWithObjects:[_appNome objectAtIndex:row], [_appCategoria objectAtIndex:[indexPath row]], [_appImg objectAtIndex:row], nil];
        
        details.ind = row;
        
        }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
}


@end
