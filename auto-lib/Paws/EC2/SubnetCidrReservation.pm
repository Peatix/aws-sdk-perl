package Paws::EC2::SubnetCidrReservation;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', request_name => 'cidr', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has ReservationType => (is => 'ro', isa => 'Str', request_name => 'reservationType', traits => ['NameInRequest']);
  has SubnetCidrReservationId => (is => 'ro', isa => 'Str', request_name => 'subnetCidrReservationId', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SubnetCidrReservation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SubnetCidrReservation object:

  $service_obj->Method(Att1 => { Cidr => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SubnetCidrReservation object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidr

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Cidr => Str

The CIDR that has been reserved.


=head2 Description => Str

The description assigned to the subnet CIDR reservation.


=head2 OwnerId => Str

The ID of the account that owns the subnet CIDR reservation.


=head2 ReservationType => Str

The type of reservation.


=head2 SubnetCidrReservationId => Str

The ID of the subnet CIDR reservation.


=head2 SubnetId => Str

The ID of the subnet.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags assigned to the subnet CIDR reservation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
