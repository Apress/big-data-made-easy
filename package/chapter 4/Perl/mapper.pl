#!/usr/bin/perl

my $line;
my @words = ();
my $word;

# process input line by line

foreach $line ( <STDIN> ) 
{
  # strip new line from string

  chomp( $line );

  # strip line into words using space

  @words = split( ' ', $line );

  # now print the name value pairs 

  foreach  $word (@words)
  {
    # convert word to lower case

    $word = lc( $word ) ;

    # remove unwanted characters from string

    $word =~ s/!//g ;  # remove ! character from word
    $word =~ s/"//g ;  # remove " character from word
    $word =~ s/'//g ;  # remove ' character from word
    $word =~ s/_//g ;  # remove _ character from word
    $word =~ s/;//g ;  # remove ; character from word
    $word =~ s/\(//g ; # remove ( character from word
    $word =~ s/\)//g ; # remove ) character from word
    $word =~ s/\#//g ; # remove # character from word
    $word =~ s/\$//g ; # remove $ character from word
    $word =~ s/\&//g ; # remove & character from word
    $word =~ s/\.//g ; # remove . character from word
    $word =~ s/\,//g ; # remove , character from word
    $word =~ s/\*//g ; # remove * character from word
    $word =~ s/\-//g ; # remove - character from word
    $word =~ s/\///g ; # remove / character from word
    $word =~ s/\{//g ; # remove { character from word
    $word =~ s/\}//g ; # remove } character from word
    $word =~ s/\}//g ; # remove } character from word

    # only print the key,value pair if the key is not 
    # empty

    if ( $word ne "" )
    {
      print "$word,1\n" ;
    }

  }

}
