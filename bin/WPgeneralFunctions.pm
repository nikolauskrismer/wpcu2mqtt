sub readParameter() {
    my ($wp_memory, $dataTypes, $parameterKey) = @_;
    my $value;
    my $prog = "./readModbus -f" . $wp_memory->{$parameterKey}->{function} 
        . " -a" . $wp_memory->{$parameterKey}{addr}
        . " -s" . $wp_memory->{$parameterKey}{size}
        . " -t" . $dataTypes->{ $wp_memory->{$parameterKey}{type} };
    print($parameterKey.":\n");
    print("  - executing: ".$prog."\n");
    open( PROG, "$prog|" ) || die("Cannot execute $prog\n");
    die("readModbus failed with exit code $?\n") if($? != 0);    
    $value=<PROG>;
    $value =~ s/\s+$//;
    print("  - result: ".$value.$wp_memory{$parameterKey}{unit}."\n");
    chomp($value);
    close(PROG);
	
    return $value;
}

return 1;
