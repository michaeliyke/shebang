#include <inttypes.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/**
 * random64 - a function to generate random 64bit integer
 *
 * @seed: used to generate the random 64bit integer
 * Return: returns the generated random number
 */
uint64_t random64(uint32_t *seed)
{
	uint64_t result;
	uint8_t *result8 = (uint8_t *)&result;

	for (size_t i = 0; i < sizeof(result); i++)
		result8[i] = rand_r(seed);

	return (result);
}

uint64_t sum_digits_squared(uint64_t num)
{
	uint64_t total = 0;

	while (num > 0)
	{
		uint64_t num_mod_base = num % 10;
		total += num_mod_base * num_mod_base;
		num = num / 10;
	}

	return (total);
}

int is_happy(uint64_t num)
{
	while (num != 1)
}
