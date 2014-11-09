=head1 NAME

System::SpawnMaster::Runner;

=head2 DESCRIPTION

Startpoint of the System::SpawnMaster;

=cut

package System::SpawnMaster::Runner;
use strict;
use warnings;
use Carp;

sub new {
	my ($class, %params) = @_;

	my $self = {};
	bless $self, $class;

	$self->{config} = System::SpawnMaster::Config->new();

	if (!$params{workers}) {
		croak "workers param missing";
	}

	$self->{config}->workers($params{workers});

	if ($params{signals}) {
		$self->{config}->signals();
	}
	return $self;
}

1;

package System::SpawnMaster::Config;
use strict;
use Carp;

sub new {
	my $class = shift;

	my $self = {};
	bless $self, $class;
	return $self;
}


sub workers {
	return shift->getset(@_);
}


sub getset {
	my ($self, $key, $value) = @_;

	unless ($key) {
		croak "Can't use without params";
	}

	if ($value) {
		$self->{$key} = $value;
	}
	return $self->{$key};
}

1;
