package System::SpawnMaster::Utils;
use strict;
use warnings;
use base qw/Exporter/;

use System::SpawnMaster::Config;
our @EXPORT = qw/dbg_msg/;

sub dbg_msg {
    my (@msg) = @_;

    my $config = config();
    return 1 unless $config->debug();
    
    my $msg = join '', @msg;
    $msg .= "\n";
    
    print $msg;
    return 1;
}

1;

