
package Paws::RedShift::DeregisterNamespaceOutputMessage;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeregisterNamespaceOutputMessage

=head1 ATTRIBUTES


=head2 Status => Str

The registration status of the cluster or serverless namespace.

Valid values are: C<"Registering">, C<"Deregistering">
=head2 _request_id => Str


=cut

