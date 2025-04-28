package Paws::Credential;
  use Moose::Role;

  requires 'credentials';

  sub are_set {
    my $self = shift;
    return (defined $self->credentials);
  }

  no Moose;
1;
