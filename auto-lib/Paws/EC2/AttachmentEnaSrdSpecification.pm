package Paws::EC2::AttachmentEnaSrdSpecification;
  use Moose;
  has EnaSrdEnabled => (is => 'ro', isa => 'Bool', request_name => 'enaSrdEnabled', traits => ['NameInRequest']);
  has EnaSrdUdpSpecification => (is => 'ro', isa => 'Paws::EC2::AttachmentEnaSrdUdpSpecification', request_name => 'enaSrdUdpSpecification', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AttachmentEnaSrdSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AttachmentEnaSrdSpecification object:

  $service_obj->Method(Att1 => { EnaSrdEnabled => $value, ..., EnaSrdUdpSpecification => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AttachmentEnaSrdSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->EnaSrdEnabled

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EnaSrdEnabled => Bool

Indicates whether ENA Express is enabled for the network interface.


=head2 EnaSrdUdpSpecification => L<Paws::EC2::AttachmentEnaSrdUdpSpecification>

Configures ENA Express for UDP network traffic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
