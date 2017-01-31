/* filen AllTests.c */

#include <stdio.h>

#include "CuTest.h"

CuSuite* CuGetSuite();
CuSuite* CuStringGetSuite();

void RunAllTests(void)
{
	CuString *output = CuStringNew();
	CuSuite* suite = CuSuiteNew();

	CuSuiteAddSuite(suite, Tabell-GetTestSuite());
	CuSuiteAddSuite(suite, CuStringGetSuite());

	CuSuiteRun(suite);
	CuSuiteSummary(suite, output);
	CuSuiteDetails(suite, output);
	printf("%s\n", output->buffer);
}

int main(void)
{
	RunAllTests();
}

/*
Kompilera allt med 
gcc AllTests.c CuTest.c Tabell.c

exekvera progam med tester a.out eller om exe-filen är namngiven på annat sätt
*/
