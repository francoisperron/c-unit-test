#include "seatest.h"

int add(int a, int b);

void test_add()
{
	assert_int_equal(5, add(2,3));
}

void test_logic( void )
{
	test_fixture_start();
	run_test(test_add);
	test_fixture_end();    
}