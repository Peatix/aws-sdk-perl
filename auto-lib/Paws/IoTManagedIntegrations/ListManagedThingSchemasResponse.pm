
package Paws::IoTManagedIntegrations::ListManagedThingSchemasResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::IoTManagedIntegrations::ManagedThingSchemaListItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListManagedThingSchemasResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::IoTManagedIntegrations::ManagedThingSchemaListItem>]

The list of managed thing schemas.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results.


=head2 _request_id => Str


=cut

