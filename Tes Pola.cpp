#include<stdio.h>
#include<conio.h>
#include<iostream>

using namespace std;


main()
{
	int tinggi=11, a, b, deklarasi;

      deklarasi = tinggi/2*2; 
	 
        if(tinggi%2==0)
		{	
          for (a = 0; a < tinggi; a++) 
		  	{  
				for (int b = 0; b < tinggi+1; b++) 
				{
              		if (a < deklarasi) 
			 		 { 
              	  		if ((b >= deklarasi-a) && (b <= deklarasi+a)) 
                 			 cout << " "; 
                
						else
                 			 cout << "*"; 
              		} 
			  
			  		else 
			 		 {  
                		if ((b > a - deklarasi) && (b < 3*deklarasi-a)) 
                  			cout << " "; 
                		else 
                 			 cout << "*";
              		} 
            } 
            
            cout << endl; 
          }
          
        }
		 
		
		else 
		{
          for (a = 0; a < (2 * deklarasi) + 1; a++) 
		  {    
				for (int b = 0; b < (2 * deklarasi) + 1; b++) 
				{ 
              		if (a < deklarasi) 
			  		{ 
                		if ((b > deklarasi - a) && (b < deklarasi + a)) 
                  			cout << " "; 
                  			
                		else
                  			cout << "*"; 
			  		}
			  
			  		else if ((a == deklarasi))
			  		{
			  			if ((b > deklarasi - a) && (b < deklarasi + a)) 
                  			cout << "-"; 
                		else
                  			cout << "*";
			  		} 
			  
			  
			 		 else 
			  		{  
                		if ((b > a - deklarasi) && (b < 3*deklarasi-a)) 
                 			cout << " "; 
                		else 
                  			cout << "*";
              		}
			   
            	} 
            	
            cout << endl; 
          }
          
        }        
 
	getch();
}

