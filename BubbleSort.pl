#!/usr/bin/perl  
    
# Modules used  
# use strict;  
use warnings;  

@input = (5, 3, 8, 4, 6);

# Print my @input
foreach $ele (@input)
{
    print "$ele ";
}
print "\n";

# Sort my array and assign it to a new one
@sorted_input = bubble_sort(@input);

# Print my sorted array
foreach $ele (@sorted_input)
{
    print "$ele ";
}
print "\n";

# The bubblesort subroutine
sub bubble_sort
{
    @array = @_;

    for($i = 0; $i < @array; $i++)
    {
        for($j = 1; $j < @array; $j++)
        {
            if ($array[$j] < $array[$j-1])
            {
                $temp = $array[$j];
                $array[$j] = $array[$j-1];
                $array[$j-1] = $temp;
            }
        }
    }
    return @array;
}