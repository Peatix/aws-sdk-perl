package Paws::EC2::IpamDiscoveryFailureReason;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamDiscoveryFailureReason

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamDiscoveryFailureReason object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamDiscoveryFailureReason object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Code => Str

The discovery failure code.

=over

=item *

C<assume-role-failure> - IPAM could not assume the Amazon Web Services
IAM service-linked role. This could be because of any of the following:

=over

=item *

SLR has not been created yet and IPAM is still creating it.

=item *

You have opted-out of the IPAM home Region.

=item *

Account you are using as your IPAM account has been suspended.

=back

=item *

C<throttling-failure> - IPAM account is already using the allotted
transactions per second and IPAM is receiving a throttling error when
assuming the Amazon Web Services IAM SLR.

=item *

C<unauthorized-failure> - Amazon Web Services account making the
request is not authorized. For more information, see AuthFailure
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html)
in the I<Amazon Elastic Compute Cloud API Reference>.

=back



=head2 Message => Str

The discovery failure message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
