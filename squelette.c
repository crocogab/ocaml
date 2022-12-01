#include <stdio.h>
#include <math.h>
#define HEIGHT 600
#define WIDTH 600

typedef int rgb[3]; // rgb est le *type* « tableau de trois int »

rgb red = {255, 0, 0};
rgb green = {0, 255, 0};
rgb blue = {0, 0, 255};
rgb black = {0, 0, 0};
rgb white = {255, 255, 255};

rgb canvas[HEIGHT][WIDTH];

void print_canvas(){
	printf("P3\n");
	printf("%d %d\n", WIDTH, HEIGHT);
	printf("255");
	for(int i = 0; i < HEIGHT; i++){
		for(int j = 0; j < WIDTH; j++){
			printf("\n");
			for(int k = 0; k < 3; k++){
				printf("%d", canvas[i][j][k]);
				if(k<2){
					printf(" ");
				}
			}
		}
	}
}

void put_pixel(int x, int y, rgb c){
	int row = HEIGHT - y - 1;
	int column = x;
	if (0 <= row && row < HEIGHT && 0 <= column && column < WIDTH){
		for(int i = 0; i < 3; i++){
			canvas[row][column][i] = c[i];
		}
	}
}

void draw_h_line(int y, int x0, int x1, rgb c){
     if(x0>x1){
        draw_h_line(y,x1,x0,c);
     }
     for (int i=x0;i<=x1;i++){
         put_pixel(i,y,c);
     }
}

void draw_v_line(int x, int y0, int y1, rgb c){
     if (y0>y1){
        draw_v_line(x,y1,y0,c);
        return;
     }
     for (int i=y0;i<=y1;i++){
         put_pixel(x,i,c);
     }
}

void draw_rectangle(int x0,int y0,int x1,int y1,rgb c){
     draw_h_line(y0,x0,x1,c);
     draw_v_line(x1,y0,y1,c);
     draw_h_line(y1,x1,x0,c);
     draw_v_line(x0,y1,y0,c);
    }


void fill_rectangle(int x0,int y0,int x1,int y1,rgb c){
     if (y0>y1){
         fill_rectangle(x0,y1,x1,y1,c);
     }
     for (int i =y0;i<=y1;i++){
         draw_h_line(i,x0,x1,c);
     }
}


void fill_disk(int xc,int yc,int radius,rgb c){
     for (int i=xc;i<xc+radius;i++){
         for (int j=yc;j<yc;i++){
             if ( i<(xc+radius) || i>(xc-radius) ) && j<(yc+radius) || j>(yc-radius) {
               put_pixel(i,j,c)
             }
         }
     }
}


void fill_canvas(rgb c){
	// Fonction utilisée pour l'initialisation du canvas. Remplis le canevas de la couleur demandée
	for(int x = 0; x < WIDTH; x++){
		for(int y = 0; y < HEIGHT; y++){
			put_pixel(x,y,c);
		}
	}
}

int main(){
	rgb grey = {150, 150, 150};
	fill_canvas(red); //la variable globale canvas n'a pas été initialisée lors de sa déclaration.
        //draw_h_line(300,0,500,blue);
        //draw_v_line(300,0,500,green);
        draw_rectangle(100,100,300,300,blue);
        fill_rectangle(100,100,300,300,blue);
        print_canvas();
	return 0;
}
