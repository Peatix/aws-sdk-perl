package Paws::EC2::CapacityReservationBillingRequest;
  use Moose;
  has CapacityReservationId => (is => 'ro', isa => 'Str', request_name => 'capacityReservationId', traits => ['NameInRequest']);
  has CapacityReservationInfo => (is => 'ro', isa => 'Paws::EC2::CapacityReservationInfo', request_name => 'capacityReservationInfo', traits => ['NameInRequest']);
  has LastUpdateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTime', traits => ['NameInRequest']);
  has RequestedBy => (is => 'ro', isa => 'Str', request_name => 'requestedBy', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has UnusedReservationBillingOwnerId => (is => 'ro', isa => 'Str', request_name => 'unusedReservationBillingOwnerId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CapacityReservationBillingRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CapacityReservationBillingRequest object:

  $service_obj->Method(Att1 => { CapacityReservationId => $value, ..., UnusedReservationBillingOwnerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CapacityReservationBillingRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityReservationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CapacityReservationId => Str

The ID of the Capacity Reservation.


=head2 CapacityReservationInfo => L<Paws::EC2::CapacityReservationInfo>

Information about the Capacity Reservation.


=head2 LastUpdateTime => Str

The date and time, in UTC time format, at which the request was
initiated.


=head2 RequestedBy => Str

The ID of the Amazon Web Services account that initiated the request.


=head2 Status => Str

The status of the request. For more information, see View billing
assignment requests for a shared Amazon EC2 Capacity Reservation
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-billing-transfers.html).


=head2 StatusMessage => Str

Information about the status.


=head2 UnusedReservationBillingOwnerId => Str

The ID of the Amazon Web Services account to which the request was
sent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
