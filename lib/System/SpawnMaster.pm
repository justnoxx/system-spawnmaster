=head1 NAME

System::SpawnMaster

=head1 DESCRIPTION

Simple toolkit for fork-based applications.

=cut

package System::SpawnMaster;
use strict;
use warnings;
use System::SpawnMaster::Supervisor;
use System::SpawnMaster::Master;
use System::SpawnMaster::Worker;
use System::SpawnMaster::Runner;
use System::SpawnMaster::Utils;

our $VERSION = 0.01;


sub new {
	my (undef, %params) = @_;
	return System::SpawnMaster::Runner->new(%params);
}

1;

