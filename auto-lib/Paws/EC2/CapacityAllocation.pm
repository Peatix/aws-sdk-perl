package Paws::EC2::CapacityAllocation;
  use Moose;
  has AllocationType => (is => 'ro', isa => 'Str', request_name => 'allocationType', traits => ['NameInRequest']);
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CapacityAllocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CapacityAllocation object:

  $service_obj->Method(Att1 => { AllocationType => $value, ..., Count => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CapacityAllocation object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationType => Str

The usage type. C<used> indicates that the instance capacity is in use
by instances that are running in the Capacity Reservation.


=head2 Count => Int

The amount of instance capacity associated with the usage. For example
a value of C<4> indicates that instance capacity for 4 instances is
currently in use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
