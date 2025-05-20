package Paws::EC2::Ipv4PrefixSpecification;
  use Moose;
  has Ipv4Prefix => (is => 'ro', isa => 'Str', request_name => 'ipv4Prefix', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Ipv4PrefixSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Ipv4PrefixSpecification object:

  $service_obj->Method(Att1 => { Ipv4Prefix => $value, ..., Ipv4Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Ipv4PrefixSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->Ipv4Prefix

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Ipv4Prefix => Str

The IPv4 prefix. For information, see Assigning prefixes to network
interfaces
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html)
in the I<Amazon EC2 User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
