package Paws::Net::InterceptorContext;
  use Moose;

  has service => (
    is       => 'ro',
    required => 1,
  );

  has call_object => (
    is       => 'ro',
    required => 1,
  );

  has response => (
    is  => 'rw',

  );

  has result => (
    is  => 'rw',
  );

  has attempt => (
    is      => 'rw',
    isa     => 'Int',
    default => 0,
  );

  has should_retry => (
    is      => 'rw',
    isa     => 'Bool',
    default => 0,
  );

  has retry_delay => (
    is      => 'rw',
    isa     => 'Num',
    default => 0,
  );

  has stash => (
    is      => 'rw',
    isa     => 'HashRef',
    default => sub { {} },
  );

  sub result_is_exception {
    my $self = shift;
    return 0 if not defined $self->result;
    return 0 if not ref $self->result;
    return 1 if ref($self->result) eq 'Paws::Exception';
    return 0;
  }

  __PACKAGE__->meta->make_immutable;
1;
