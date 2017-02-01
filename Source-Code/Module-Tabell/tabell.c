/* tabell.c */

#include "CuTest.h"
#include "tabell.h"

#define TestaDennaFilEnbart 1 /* 1 true 0 false*/

#if TestaDennaFilEnbart

	const double ranteFaktor = RANTESATS / 100;

#endif


static double NastaAr( double kapital ); /* only in this file */

void TabellPaSkarmen( double kapital, int antalAr   )
{
	int ar ;

	printf("\n èr     Saldo\n ==     =====\n");
	for ( ar = 1; ar <= antalAr; ar++ ) {
		kapital = NastaAr( kapital );
		
		/* enheter i tabellen */
		if ( -10 < kapital && kapital < 10 )
			printf("%3d%11.2f kr\n", ar, ABS( kapital ));				/* ABS preprocessor i tabell.h - inte bra!  */
		else if ( -100 < kapital && kapital < 100 )
			printf("%3d%11.2f da(deka)kr\n", ar, (ABS( kapital ))/10);
		else if ( -1000 < kapital && kapital < 1000 )
			printf("%3d%11.2f h(hekto)kr\n", ar, (ABS( kapital ))/100);
		else  
			printf("%3d%11.2f kkr\n", ar, (ABS( kapital ))/1000);

	}
	
	return;
}


static double NastaAr( double x ) {

	if ( x > 0 )
		x = x * ( 1 + ranteFaktor );          	/* OBS! inte snyggt - sidoeffekt, ranteFaktor deklareras i ranta.h definiers i main.h */
	else 	x = x * 1/( 1 + RANTESATS/100 );   	/* Inte snyggt, RANTESATS prepocessor i ranta.h */

	return x ;
}

#if TestaDennaFilEnbart
/* ------------bygger tester till funktion NastaAr -------------- */

void Test_NastaAr(CuTest *tc){
	double input = 10;
	double actual = NastaAr(input);
	double expected = input * ( 1 + ranteFaktor ); 
	CuAssertDblEquals(tc,expected,actual,0.01);
}

CuSuite* Tabell_GetTestSuite(){
	CuSuite* suite=CuSuiteNew();
	SUITE_ADD_TEST(suite, Test_NastaAr);
	return suite;
}

/* Slut test till funktion NastaAr */

#endif