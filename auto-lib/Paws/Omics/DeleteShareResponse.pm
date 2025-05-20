
package Paws::Omics::DeleteShareResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::DeleteShareResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the share being deleted.

Valid values are: C<"PENDING">, C<"ACTIVATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">, C<"FAILED">
=head2 _request_id => Str


=cut

