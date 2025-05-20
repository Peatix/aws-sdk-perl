
package Paws::Route53::ListCidrCollectionsResponse;
  use Moose;
  has CidrCollections => (is => 'ro', isa => 'ArrayRef[Paws::Route53::CollectionSummary]');
  has NextToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListCidrCollectionsResponse

=head1 ATTRIBUTES


=head2 CidrCollections => ArrayRef[L<Paws::Route53::CollectionSummary>]

A complex type with information about the CIDR collection.



=head2 NextToken => Str

An opaque pagination token to indicate where the service is to begin
enumerating results.

If no value is provided, the listing of results starts from the
beginning.




=cut

