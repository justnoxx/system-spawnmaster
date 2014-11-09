#!/usr/bin/env perl
use strict;
use warnings;
use System::SpawnMaster;

my $ss = System::SpawnMaster->new(
    workers => 5,
);

$ss->run();
