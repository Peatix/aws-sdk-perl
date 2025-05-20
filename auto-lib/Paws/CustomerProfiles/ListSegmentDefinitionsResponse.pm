
package Paws::CustomerProfiles::ListSegmentDefinitionsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::SegmentDefinitionItem]', traits => ['NameInRequest'], request_name => 'Items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'NextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListSegmentDefinitionsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::SegmentDefinitionItem>]

List of segment definitions.


=head2 NextToken => Str

The pagination token from the previous call.


=head2 _request_id => Str


=cut

