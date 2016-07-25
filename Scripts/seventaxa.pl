#!/usr/bin/perl

print "\n\n\n Calculating ..... \n\n\n";

#use strict;
#use warnings;

use Path::Class;
#use autodie; # die if problem reading or writing a file

 $dir = dir("/Users/glowworm/Documents/STAT/2016Match/COAL2012");

 $file = $dir->file("output.txt");

 $file_handle = $file->openw();

 @list = ('Sum of Squares');

foreach my $line ( @list ) {
    $file_handle->print($line . "\n");
}


#foreach my $gamma (0, 0.1, 0.2, 0.3, 0.4, 0.5) {
#foreach my $gamma (0.1) {

#use constant NLOOP1 => 100;
#use constant NLOOP2 => 100;  
# $count1 = 0;
# $count2 = 0;
# $T0 = 1.0;
# $T1 = 5.0;
# $T2 = 5.0;
#$T3 = 5.0;
# $d1 = $T1/NLOOP1;
# $d2 = $T2/NLOOP1;
#for ( $count1 = 0; $count1 < NLOOP1; $count1++)
#{
    # $t1 = ($count1+1) * $d1;
#for ( $count2 = 0; $count2 < NLOOP2; $count2++)
#{
 #   $t1 = ($count1+1) * $d1;
  #   $t2 = ($count2+1) * $d2;

   # open MYINFILE, ">myspeciestree";
   # select MYINFILE;
   # print "((((A:";
   # print $T0;
   # print ",B:";
   # print $T0;
   # print "):";
   # print $t1;
   # print ",C:"; 
   # print $T0+$t1;
   # print "):"; 
   # print $t2;
   # print ",D:";
   # print $T0+$t1+$t2;
   # print "):";
   # print $T3;
   # print ",E:";
   # print $T0+$t1+$t2+$T3; 
   # print ");\n";
   # close MYINFILE;

    open MYINFILE, ">myinfile";
    select MYINFILE;
    print "begin coal;\n";
    print "  nstaxa = 7;\n";
    print "  intra yes;\n";
    print "  gene tree file = t7all;\n";
    print "  species tree file = Smyspeciestreeseven_Sym;\n";
    print "  theta = 2;\n";
    print " ngtaxa  1 1 1 1 1 1 1;";       
    print " \n"; 
    print "  taxa names = A B C D E F G ;\n";
    print " \n";
    print "  blstyle none;\n"; 
    print " \n";
    print "  outfile = myout / probs histories gtopo formulas;\n";
    print " \n";
    print "  ngtrees  10395;\n";   
    print "  nstrees 1;\n";
    my $range = 100000;
    my $random_number1 = int(rand($range));
    print "  seed1 = ", $random_number1, "\n"; 
    my $random_number2 = int(rand($range));
    print "  seed2 = ", $random_number2, "\n";
    print " \n";
    print "end;\n";
    close MYINFILE;
      
    system("cp myinfile infile");
    system("./coal > outfile");

   # system("awk '{print $2}' myout > outtest");
   # system("xargs -n105 < outtest > outtest2");
   # system("awk '{s=0;for(i=1;i<=NF;i++)s+=$i*$i;print s}' outtest2 > sumsquare");

    system("cd /usr/local/bin");
    system("R CMD BATCH sumsq.R");
    system("cd /Users/glowworm/Documents/STAT/2016Match/COAL2012");

    open INPUT, "sumsq";
    undef $/;
    $content = <INPUT>;
    close INPUT;
    $/ = "\n";

    # $infile = $dir->file("sumsquare");
    # $content = $infile->slurp();

#    open MYINFILE, ">test";
#    select MYINFILE;
#    print $content;
#    close MYINFILE;

     $file_handle = $file->open('>>');
     #@list = ($t1  $t2  $content);
    #foreach my $line ( @list ) {
	$file_handle->print($content, "\n");
    #}

system("/bin/rm -f sumsquare sumsq");

#}
#}

#system("/bin/rm -f all.sig.results.txt");


