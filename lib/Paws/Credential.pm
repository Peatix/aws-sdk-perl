package Paws::Credential;
  use Moose::Role;

  requires 'refresh';

  sub are_set {
    my $self = shift;
    return (defined $self->refresh);
  }

  no Moose;
1;
