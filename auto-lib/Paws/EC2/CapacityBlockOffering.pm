package Paws::EC2::CapacityBlockOffering;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has CapacityBlockDurationHours => (is => 'ro', isa => 'Int', request_name => 'capacityBlockDurationHours', traits => ['NameInRequest']);
  has CapacityBlockDurationMinutes => (is => 'ro', isa => 'Int', request_name => 'capacityBlockDurationMinutes', traits => ['NameInRequest']);
  has CapacityBlockOfferingId => (is => 'ro', isa => 'Str', request_name => 'capacityBlockOfferingId', traits => ['NameInRequest']);
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest']);
  has EndDate => (is => 'ro', isa => 'Str', request_name => 'endDate', traits => ['NameInRequest']);
  has InstanceCount => (is => 'ro', isa => 'Int', request_name => 'instanceCount', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has StartDate => (is => 'ro', isa => 'Str', request_name => 'startDate', traits => ['NameInRequest']);
  has Tenancy => (is => 'ro', isa => 'Str', request_name => 'tenancy', traits => ['NameInRequest']);
  has UpfrontFee => (is => 'ro', isa => 'Str', request_name => 'upfrontFee', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CapacityBlockOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CapacityBlockOffering object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., UpfrontFee => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CapacityBlockOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone of the Capacity Block offering.


=head2 CapacityBlockDurationHours => Int

The number of hours (in addition to C<capacityBlockDurationMinutes>)
for the duration of the Capacity Block reservation. For example, if a
Capacity Block starts at B<04:55> and ends at B<11:30>, the hours field
would be B<6>.


=head2 CapacityBlockDurationMinutes => Int

The number of minutes (in addition to C<capacityBlockDurationHours>)
for the duration of the Capacity Block reservation. For example, if a
Capacity Block starts at B<08:55> and ends at B<11:30>, the minutes
field would be B<35>.


=head2 CapacityBlockOfferingId => Str

The ID of the Capacity Block offering.


=head2 CurrencyCode => Str

The currency of the payment for the Capacity Block.


=head2 EndDate => Str

The end date of the Capacity Block offering.


=head2 InstanceCount => Int

The number of instances in the Capacity Block offering.


=head2 InstanceType => Str

The instance type of the Capacity Block offering.


=head2 StartDate => Str

The start date of the Capacity Block offering.


=head2 Tenancy => Str

The tenancy of the Capacity Block.


=head2 UpfrontFee => Str

The total price to be paid up front.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
