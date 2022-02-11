opendir D, ".";
@files = sort grep /^\w/, readdir D;
closedir D;

$cnt = 'pete01';
foreach $f (@files) {
    print "mv $f $cnt.jpg\n";
    $cnt++;
}
