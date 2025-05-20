
package Paws::DataZone::DeleteDomainOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DeleteDomainOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The status of the domain.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"CREATION_FAILED">, C<"DELETING">, C<"DELETED">, C<"DELETION_FAILED">
=head2 _request_id => Str


=cut

