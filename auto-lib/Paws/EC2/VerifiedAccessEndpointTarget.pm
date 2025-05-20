package Paws::EC2::VerifiedAccessEndpointTarget;
  use Moose;
  has VerifiedAccessEndpointId => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessEndpointId', traits => ['NameInRequest']);
  has VerifiedAccessEndpointTargetDns => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessEndpointTargetDns', traits => ['NameInRequest']);
  has VerifiedAccessEndpointTargetIpAddress => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessEndpointTargetIpAddress', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VerifiedAccessEndpointTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VerifiedAccessEndpointTarget object:

  $service_obj->Method(Att1 => { VerifiedAccessEndpointId => $value, ..., VerifiedAccessEndpointTargetIpAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VerifiedAccessEndpointTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->VerifiedAccessEndpointId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 VerifiedAccessEndpointId => Str

The ID of the Verified Access endpoint.


=head2 VerifiedAccessEndpointTargetDns => Str

The DNS name of the target.


=head2 VerifiedAccessEndpointTargetIpAddress => Str

The IP address of the target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
