
package Paws::CustomerProfiles::ListCalculatedAttributeDefinitionsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::ListCalculatedAttributeDefinitionItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListCalculatedAttributeDefinitionsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::ListCalculatedAttributeDefinitionItem>]

The list of calculated attribute definitions.


=head2 NextToken => Str

The pagination token from the previous call to
ListCalculatedAttributeDefinitions.


=head2 _request_id => Str


=cut

