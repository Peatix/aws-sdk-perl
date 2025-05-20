
package Paws::CleanRooms::ListIdNamespaceAssociationsOutput;
  use Moose;
  has IdNamespaceAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::IdNamespaceAssociationSummary]', traits => ['NameInRequest'], request_name => 'idNamespaceAssociationSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListIdNamespaceAssociationsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdNamespaceAssociationSummaries => ArrayRef[L<Paws::CleanRooms::IdNamespaceAssociationSummary>]

The summary information of the ID namespace associations that you
requested.


=head2 NextToken => Str

The token value provided to access the next page of results.


=head2 _request_id => Str


=cut

