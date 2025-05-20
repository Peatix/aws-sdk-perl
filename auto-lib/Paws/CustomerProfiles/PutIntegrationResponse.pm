
package Paws::CustomerProfiles::PutIntegrationResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has EventTriggerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IsUnstructured => (is => 'ro', isa => 'Bool');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', required => 1);
  has ObjectTypeName => (is => 'ro', isa => 'Str');
  has ObjectTypeNames => (is => 'ro', isa => 'Paws::CustomerProfiles::ObjectTypeNames');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');
  has Uri => (is => 'ro', isa => 'Str', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::PutIntegrationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the domain was created.


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.


=head2 EventTriggerNames => ArrayRef[Str|Undef]

A list of unique names for active event triggers associated with the
integration. This list would be empty if no Event Trigger is associated
with the integration.


=head2 IsUnstructured => Bool

Boolean that shows if the Flow that's associated with the Integration
is created in Amazon Appflow, or with ObjectTypeName equals
_unstructured via API/CLI in flowDefinition.


=head2 B<REQUIRED> LastUpdatedAt => Str

The timestamp of when the domain was most recently edited.


=head2 ObjectTypeName => Str

The name of the profile object type.


=head2 ObjectTypeNames => L<Paws::CustomerProfiles::ObjectTypeNames>

A map in which each key is an event type from an external application
such as Segment or Shopify, and each value is an C<ObjectTypeName>
(template) used to ingest the event. It supports the following event
types: C<SegmentIdentify>, C<ShopifyCreateCustomers>,
C<ShopifyUpdateCustomers>, C<ShopifyCreateDraftOrders>,
C<ShopifyUpdateDraftOrders>, C<ShopifyCreateOrders>, and
C<ShopifyUpdatedOrders>.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role. The Integration uses
this role to make Customer Profiles requests on your behalf.


=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 B<REQUIRED> Uri => Str

The URI of the S3 bucket or any other type of data source.


=head2 WorkflowId => Str

Unique identifier for the workflow.


=head2 _request_id => Str


=cut

