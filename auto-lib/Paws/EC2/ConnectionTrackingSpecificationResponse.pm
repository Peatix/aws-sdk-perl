package Paws::EC2::ConnectionTrackingSpecificationResponse;
  use Moose;
  has TcpEstablishedTimeout => (is => 'ro', isa => 'Int', request_name => 'tcpEstablishedTimeout', traits => ['NameInRequest']);
  has UdpStreamTimeout => (is => 'ro', isa => 'Int', request_name => 'udpStreamTimeout', traits => ['NameInRequest']);
  has UdpTimeout => (is => 'ro', isa => 'Int', request_name => 'udpTimeout', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ConnectionTrackingSpecificationResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ConnectionTrackingSpecificationResponse object:

  $service_obj->Method(Att1 => { TcpEstablishedTimeout => $value, ..., UdpTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ConnectionTrackingSpecificationResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->TcpEstablishedTimeout

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 TcpEstablishedTimeout => Int

Timeout (in seconds) for idle TCP connections in an established state.
Min: 60 seconds. Max: 432000 seconds (5 days). Default: 432000 seconds.
Recommended: Less than 432000 seconds.


=head2 UdpStreamTimeout => Int

Timeout (in seconds) for idle UDP flows classified as streams which
have seen more than one request-response transaction. Min: 60 seconds.
Max: 180 seconds (3 minutes). Default: 180 seconds.


=head2 UdpTimeout => Int

Timeout (in seconds) for idle UDP flows that have seen traffic only in
a single direction or a single request-response transaction. Min: 30
seconds. Max: 60 seconds. Default: 30 seconds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
