#!/usr/bin/perl

my $line;
my @lineparams = ();
my $oldword,$word,$value,$sumval;

# the reducer is going to receive a key,value pair from stdin and it 
# will need to sum up the values. It will need to split the name and 
# value out of the comma separated string.

$oldword = "" ;

foreach $line ( <STDIN> ) 
{
  # strip new line from string

  chomp( $line );

  # split the line into the word and value

  @lineparams = split( '\,', $line );

  $word  = $lineparams[0];
  $value = $lineparams[1];

  # Hadoop sorts the data by value so just sum similar word values

  if ( $word eq $oldword ) 
  {
    $sumval += $value ;
  }
  else
  {
    if ( $oldword ne "" )
    {
      print "$oldword,$sumval\n" ;
    }
    $sumval = 1 ;
  }

  # now print the name value pairs 

  $oldword = $word ; 
}

# remember to print last word

print "$oldword,$sumval\n" ;

