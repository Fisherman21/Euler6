//
//  main.m
//  Euler6
//
//  Created by JohanLundgren on 2016-01-04.
//  Copyright © 2016 SuperMilkApps. All rights reserved.
//

#import <Foundation/Foundation.h>

/*The sum of the squares of the first ten natural numbers is,
 
 12 + 22 + ... + 102 = 385
 The square of the sum of the first ten natural numbers is,
 
 (1 + 2 + ... + 10)2 = 552 = 3025
 Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
 
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.*/

/*Verkar inte vara några större svårigheter. Jag tänker mig att jag skapar två loopar, bägge går från 1 till 100, där den ena kvaderar det aktuella talet vid varje iteration och lägger till den i en "summa"-variabel, och den andra loopen helt enkelt summerar talen vid varje iteration och slutligen kvadrerar summan som fås fram. De två summorna som fås fram subtraheras sedan från varandra*/

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Deklarerar och initialiserar två varibler för att hålla koll på summorna
        int sum1 = 0;
        int sum2 = 0;
        
        //Loopar igenom talen 1-100, kvadrerar talet och sparar det i variabeln k, vilken läggs till i variabeln sum1.
        for (int i = 0; i < 101; i++) {
            int k = i * i;
            sum1 += k;
        }
        
        //Loopar igenom talen 1-100 och lägger till talet i variabeln sum2.
        for (int l = 0; l < 101; l++) {
            sum2 += l;
        }
        
        //Kvadrerar summan av talen 1-100 och sparar det i samma variabel.
        sum2 = sum2 * sum2;
        
        //Skriver ut differensen mellan sum2 och sum1.
        NSLog(@"Differensen mellan summan av kvadraten av de 100 första talen och kvadraten av summan av de hundra första talen är: %d", (sum2 - sum1));
    }
    return 0;
}
