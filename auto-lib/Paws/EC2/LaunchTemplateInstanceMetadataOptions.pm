package Paws::EC2::LaunchTemplateInstanceMetadataOptions;
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

Paws::EC2::LaunchTemplateInstanceMetadataOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateInstanceMetadataOptions object:

  $service_obj->Method(Att1 => { HttpEndpoint => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateInstanceMetadataOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->HttpEndpoint

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 HttpEndpoint => Str

Enables or disables the HTTP metadata endpoint on your instances. If
the parameter is not specified, the default state is C<enabled>.

If you specify a value of C<disabled>, you will not be able to access
your instance metadata.


=head2 HttpProtocolIpv6 => Str

Enables or disables the IPv6 endpoint for the instance metadata
service.

Default: C<disabled>


=head2 HttpPutResponseHopLimit => Int

The desired HTTP PUT response hop limit for instance metadata requests.
The larger the number, the further instance metadata requests can
travel.

Default: 1

Possible values: Integers from 1 to 64


=head2 HttpTokens => Str

Indicates whether IMDSv2 is required.

=over

=item *

C<optional> - IMDSv2 is optional. You can choose whether to send a
session token in your instance metadata retrieval requests. If you
retrieve IAM role credentials without a session token, you receive the
IMDSv1 role credentials. If you retrieve IAM role credentials using a
valid session token, you receive the IMDSv2 role credentials.

=item *

C<required> - IMDSv2 is required. You must send a session token in your
instance metadata retrieval requests. With this option, retrieving the
IAM role credentials always returns IMDSv2 credentials; IMDSv1
credentials are not available.

=back



=head2 InstanceMetadataTags => Str

Set to C<enabled> to allow access to instance tags from the instance
metadata. Set to C<disabled> to turn off access to instance tags from
the instance metadata. For more information, see View tags for your EC2
instances using instance metadata
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/work-with-tags-in-IMDS.html).

Default: C<disabled>


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
