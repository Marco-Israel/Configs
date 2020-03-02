#include <stdio.h>
#define PATH "/somepath"
#define COMBINE1(jpg) ( PATH #jpg )
 //#define COMBINE2(jpg) (PATH ## jpg) /* wrong, not what you want */
void main(){


    printf("Test stringcombine " "\""PATH "\"" " + \"/jpg\": \t %s \n",     \
            COMBINE1(/pic1.jpg));
    //printf("Test stringcombine  PATH  %s \n", COMBINE2(pic2.jpg)); /*wrong*/



}
