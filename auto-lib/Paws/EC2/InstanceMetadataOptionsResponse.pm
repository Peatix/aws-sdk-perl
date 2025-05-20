package Paws::EC2::InstanceMetadataOptionsResponse;
  use Moose;
  has HttpEndpoint => (is => 'ro', isa => 'Str', request_name => 'httpEndpoint', traits => ['NameInRequest']);
  has HttpProtocolIpv6 => (is => 'ro', isa => 'Str', request_name => 'httpProtocolIpv6', traits => ['NameInRequest']);
  has HttpPutResponseHopLimit => (is => 'ro', isa => 'Int', request_name => 'httpPutResponseHopLimit', traits => ['NameInRequest']);
  has HttpTokens => (is => 'ro', isa => 'Str', request_name => 'httpTokens', traits => ['NameInRequest']);
  has InstanceMetadataTags => (is => 'ro', isa => 'Str', request_name => 'instanceMetadataTags', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceMetadataOptionsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceMetadataOptionsResponse object:

  $service_obj->Method(Att1 => { HttpEndpoint => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceMetadataOptionsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->HttpEndpoint

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 HttpEndpoint => Str

Indicates whether the HTTP metadata endpoint on your instances is
enabled or disabled.

If the value is C<disabled>, you cannot access your instance metadata.


=head2 HttpProtocolIpv6 => Str

Indicates whether the IPv6 endpoint for the instance metadata service
is enabled or disabled.

Default: C<disabled>


=head2 HttpPutResponseHopLimit => Int

The maximum number of hops that the metadata token can travel.

Possible values: Integers from C<1> to C<64>


=head2 HttpTokens => Str

Indicates whether IMDSv2 is required.

=over

=item *

C<optional> - IMDSv2 is optional, which means that you can use either
IMDSv2 or IMDSv1.

=item *

C<required> - IMDSv2 is required, which means that IMDSv1 is disabled,
and you must use IMDSv2.

=back



=head2 InstanceMetadataTags => Str

Indicates whether access to instance tags from the instance metadata is
enabled or disabled. For more information, see Work with instance tags
using the instance metadata
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS).


=head2 State => Str

The state of the metadata option changes.

C<pending> - The metadata options are being updated and the instance is
not ready to process metadata traffic with the new selection.

C<applied> - The metadata options have been successfully applied on the
instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
