#! /usr/bin/perl

opendir(DIR,".");

@files = readdir(DIR);

closedir(DIR);

$check=0;

foreach(@files){
    if($_ =~ /#/ || $_ =~ /~/ || $_ =~ /core/){
       unlink($_);
       print "$_ was deleted. \n";
       $check=1;
    }
}

print "OK. \n"if($check==1);
print "No files which have '#'or'~'. \n"if($check==0);
