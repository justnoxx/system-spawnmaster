package System::SpawnMaster::Config;
use strict;
use base qw/Exporter/;

our @EXPORT = qw/config/;
use Carp;

my $config_reference = undef;

sub workers {
    my ($self, $param) = @_;

    if (defined $param && $param !~ m/^\d+$/s) {
        croak 'Workers count must be a number';
    }
	return $self->getset('workers', $param);
}


sub signals {
    my ($self, $param) = @_;

    return $self->getset('signals', $param);
}


sub debug {
    my ($self, $debug) = @_;

    return $self->getset('debug', $param);
}

# service subs

sub config {
	my $class = 'System::SpawnMaster::Config';
    return $config_reference if ref $config_reference;
    
    $config_reference = {};
	bless $config_reference, $class;
	return $config_reference;
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
