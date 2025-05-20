
package Paws::Omics::DeleteAnnotationStoreResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::DeleteAnnotationStoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The store's status.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"ACTIVE">, C<"FAILED">
=head2 _request_id => Str


=cut

