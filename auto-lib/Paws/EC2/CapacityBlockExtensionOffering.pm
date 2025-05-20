package Paws::EC2::CapacityBlockExtensionOffering;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', request_name => 'availabilityZoneId', traits => ['NameInRequest']);
  has CapacityBlockExtensionDurationHours => (is => 'ro', isa => 'Int', request_name => 'capacityBlockExtensionDurationHours', traits => ['NameInRequest']);
  has CapacityBlockExtensionEndDate => (is => 'ro', isa => 'Str', request_name => 'capacityBlockExtensionEndDate', traits => ['NameInRequest']);
  has CapacityBlockExtensionOfferingId => (is => 'ro', isa => 'Str', request_name => 'capacityBlockExtensionOfferingId', traits => ['NameInRequest']);
  has CapacityBlockExtensionStartDate => (is => 'ro', isa => 'Str', request_name => 'capacityBlockExtensionStartDate', traits => ['NameInRequest']);
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest']);
  has InstanceCount => (is => 'ro', isa => 'Int', request_name => 'instanceCount', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has StartDate => (is => 'ro', isa => 'Str', request_name => 'startDate', traits => ['NameInRequest']);
  has Tenancy => (is => 'ro', isa => 'Str', request_name => 'tenancy', traits => ['NameInRequest']);
  has UpfrontFee => (is => 'ro', isa => 'Str', request_name => 'upfrontFee', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CapacityBlockExtensionOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CapacityBlockExtensionOffering object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., UpfrontFee => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CapacityBlockExtensionOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone of the Capacity Block that will be extended.


=head2 AvailabilityZoneId => Str

The Availability Zone ID of the Capacity Block that will be extended.


=head2 CapacityBlockExtensionDurationHours => Int

The amount of time of the Capacity Block extension offering in hours.


=head2 CapacityBlockExtensionEndDate => Str

The date and time at which the Capacity Block extension expires. When a
Capacity Block expires, the reserved capacity is released and you can
no longer launch instances into it. The Capacity Block's state changes
to C<expired> when it reaches its end date


=head2 CapacityBlockExtensionOfferingId => Str

The ID of the Capacity Block extension offering.


=head2 CapacityBlockExtensionStartDate => Str

The date and time at which the Capacity Block extension will start.
This date is also the same as the end date of the Capacity Block that
will be extended.


=head2 CurrencyCode => Str

The currency of the payment for the Capacity Block extension offering.


=head2 InstanceCount => Int

The number of instances in the Capacity Block extension offering.


=head2 InstanceType => Str

The instance type of the Capacity Block that will be extended.


=head2 StartDate => Str

The start date of the Capacity Block that will be extended.


=head2 Tenancy => Str

Indicates the tenancy of the Capacity Block extension offering. A
Capacity Block can have one of the following tenancy settings:

=over

=item *

C<default> - The Capacity Block is created on hardware that is shared
with other Amazon Web Services accounts.

=item *

C<dedicated> - The Capacity Block is created on single-tenant hardware
that is dedicated to a single Amazon Web Services account.

=back



=head2 UpfrontFee => Str

The total price of the Capacity Block extension offering, to be paid up
front.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
