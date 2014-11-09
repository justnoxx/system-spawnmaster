=head1 NAME

System::SpawnMaster::Runner;

=head2 DESCRIPTION

Startpoint of the System::SpawnMaster;

=cut

package System::SpawnMaster::Runner;
use strict;
use warnings;

use Carp;
use Data::Dumper;
use System::SpawnMaster::Config;

sub new {
	my ($class, %params) = @_;

	my $self = {};
	bless $self, $class;

	my $config = config();

	if (!$params{workers}) {
		croak "workers param missing";
	}

	$config->workers($params{workers});

	if ($params{signals}) {
		$config->signals($params{signals});
	}

	return $self;
}


sub run {
    my ($self) = @_;
    
    my $config = config();

    print Dumper $config;
}


1;


