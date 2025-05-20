package Paws::EC2::CapacityBlockExtension;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', request_name => 'availabilityZoneId', traits => ['NameInRequest']);
  has CapacityBlockExtensionDurationHours => (is => 'ro', isa => 'Int', request_name => 'capacityBlockExtensionDurationHours', traits => ['NameInRequest']);
  has CapacityBlockExtensionEndDate => (is => 'ro', isa => 'Str', request_name => 'capacityBlockExtensionEndDate', traits => ['NameInRequest']);
  has CapacityBlockExtensionOfferingId => (is => 'ro', isa => 'Str', request_name => 'capacityBlockExtensionOfferingId', traits => ['NameInRequest']);
  has CapacityBlockExtensionPurchaseDate => (is => 'ro', isa => 'Str', request_name => 'capacityBlockExtensionPurchaseDate', traits => ['NameInRequest']);
  has CapacityBlockExtensionStartDate => (is => 'ro', isa => 'Str', request_name => 'capacityBlockExtensionStartDate', traits => ['NameInRequest']);
  has CapacityBlockExtensionStatus => (is => 'ro', isa => 'Str', request_name => 'capacityBlockExtensionStatus', traits => ['NameInRequest']);
  has CapacityReservationId => (is => 'ro', isa => 'Str', request_name => 'capacityReservationId', traits => ['NameInRequest']);
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest']);
  has InstanceCount => (is => 'ro', isa => 'Int', request_name => 'instanceCount', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has UpfrontFee => (is => 'ro', isa => 'Str', request_name => 'upfrontFee', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CapacityBlockExtension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CapacityBlockExtension object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., UpfrontFee => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CapacityBlockExtension object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone of the Capacity Block extension.


=head2 AvailabilityZoneId => Str

The Availability Zone ID of the Capacity Block extension.


=head2 CapacityBlockExtensionDurationHours => Int

The duration of the Capacity Block extension in hours.


=head2 CapacityBlockExtensionEndDate => Str

The end date of the Capacity Block extension.


=head2 CapacityBlockExtensionOfferingId => Str

The ID of the Capacity Block extension offering.


=head2 CapacityBlockExtensionPurchaseDate => Str

The date when the Capacity Block extension was purchased.


=head2 CapacityBlockExtensionStartDate => Str

The start date of the Capacity Block extension.


=head2 CapacityBlockExtensionStatus => Str

The status of the Capacity Block extension. A Capacity Block extension
can have one of the following statuses:

=over

=item *

C<payment-pending> - The Capacity Block extension payment is
processing. If your payment can't be processed within 12 hours, the
Capacity Block extension is failed.

=item *

C<payment-failed> - Payment for the Capacity Block extension request
was not successful.

=item *

C<payment-succeeded> - Payment for the Capacity Block extension request
was successful. You receive an invoice that reflects the one-time
upfront payment. In the invoice, you can associate the paid amount with
the Capacity Block reservation ID.

=back



=head2 CapacityReservationId => Str

The reservation ID of the Capacity Block extension.


=head2 CurrencyCode => Str

The currency of the payment for the Capacity Block extension.


=head2 InstanceCount => Int

The number of instances in the Capacity Block extension.


=head2 InstanceType => Str

The instance type of the Capacity Block extension.


=head2 UpfrontFee => Str

The total price to be paid up front.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
