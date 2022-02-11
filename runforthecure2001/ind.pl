$col = 1;
print <<HTML;
<html>
<head>
<title>Menya Wolfe</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="/mwolfe.css" type="text/css">
</head>

<body bgcolor="#FFFFFF" text="#000000">
<!-- #BeginLibraryItem "/Library/Header.lbi" -->
<div align="center"><a href="/"><img src="/wolf/variousp.jpg" width="406" height="157" border="0"></a></div><!-- #EndLibraryItem -->
<h1>Run for the Cure 2001</h1>
<table>
HTML

foreach $file ('pete09.jpg', <pete[1-9]*>)
{
    if ($col == 1) {
	print "  <tr>\n";
    }
    print "    <td>\n";
    print "      <a href=\"$file\"><img src=\"200x200/$file\" width=200 height=200 border=0></a><br>\n";
    print "      \n";
    print "    </td>\n";
    if ($col == 3) {
	print "  </tr>\n";
    }
    $col++;
    $col = 1 if $col == 4;
}
print "</table>\n</body>\n</html>\n";
