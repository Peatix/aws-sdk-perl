package Paws::EC2::EnaSrdUdpSpecificationRequest;
  use Moose;
  has EnaSrdUdpEnabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnaSrdUdpSpecificationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::EnaSrdUdpSpecificationRequest object:

  $service_obj->Method(Att1 => { EnaSrdUdpEnabled => $value, ..., EnaSrdUdpEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::EnaSrdUdpSpecificationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->EnaSrdUdpEnabled

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EnaSrdUdpEnabled => Bool

Indicates whether UDP traffic uses ENA Express for your instance. To
ensure that UDP traffic can use ENA Express when you launch an
instance, you must also set B<EnaSrdEnabled> in the
B<EnaSrdSpecificationRequest> to C<true>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
