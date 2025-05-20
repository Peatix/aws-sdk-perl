
package Paws::IoTManagedIntegrations::GetDestinationResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DeliveryDestinationArn => (is => 'ro', isa => 'Str');
  has DeliveryDestinationType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetDestinationResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp value of when the destination creation requset occurred.


=head2 DeliveryDestinationArn => Str

The Amazon Resource Name (ARN) of the customer-managed destination.


=head2 DeliveryDestinationType => Str

The destination type for the customer-managed destination.

Valid values are: C<"KINESIS">
=head2 Description => Str

The description of the customer-managed destination.


=head2 Name => Str

The name of the customer-managed destination.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the delivery destination role.


=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the customer-managed
destination.


=head2 UpdatedAt => Str

The timestamp value of when the destination update requset occurred.


=head2 _request_id => Str


=cut

