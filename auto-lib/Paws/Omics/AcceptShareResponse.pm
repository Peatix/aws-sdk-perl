
package Paws::Omics::AcceptShareResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::AcceptShareResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the resource share.

Valid values are: C<"PENDING">, C<"ACTIVATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">, C<"FAILED">
=head2 _request_id => Str


=cut

