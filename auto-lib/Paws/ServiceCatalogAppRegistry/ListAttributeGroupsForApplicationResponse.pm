
package Paws::ServiceCatalogAppRegistry::ListAttributeGroupsForApplicationResponse;
  use Moose;
  has AttributeGroupsDetails => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalogAppRegistry::AttributeGroupDetails]', traits => ['NameInRequest'], request_name => 'attributeGroupsDetails');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::ListAttributeGroupsForApplicationResponse

=head1 ATTRIBUTES


=head2 AttributeGroupsDetails => ArrayRef[L<Paws::ServiceCatalogAppRegistry::AttributeGroupDetails>]

The details related to a specific attribute group.


=head2 NextToken => Str

The token to use to get the next page of results after a previous API
call.


=head2 _request_id => Str


=cut

