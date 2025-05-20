
package Paws::EC2::ModifyInstanceMetadataOptions;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has HttpEndpoint => (is => 'ro', isa => 'Str');
  has HttpProtocolIpv6 => (is => 'ro', isa => 'Str');
  has HttpPutResponseHopLimit => (is => 'ro', isa => 'Int');
  has HttpTokens => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceMetadataTags => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceMetadataOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyInstanceMetadataOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceMetadataOptions - Arguments for method ModifyInstanceMetadataOptions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceMetadataOptions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstanceMetadataOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceMetadataOptions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyInstanceMetadataOptionsResult =
      $ec2->ModifyInstanceMetadataOptions(
      InstanceId              => 'MyInstanceId',
      DryRun                  => 1,                # OPTIONAL
      HttpEndpoint            => 'disabled',       # OPTIONAL
      HttpProtocolIpv6        => 'disabled',       # OPTIONAL
      HttpPutResponseHopLimit => 1,                # OPTIONAL
      HttpTokens              => 'optional',       # OPTIONAL
      InstanceMetadataTags    => 'disabled',       # OPTIONAL
      );

    # Results:
    my $InstanceId = $ModifyInstanceMetadataOptionsResult->InstanceId;
    my $InstanceMetadataOptions =
      $ModifyInstanceMetadataOptionsResult->InstanceMetadataOptions;

    # Returns a L<Paws::EC2::ModifyInstanceMetadataOptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstanceMetadataOptions>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 HttpEndpoint => Str

Enables or disables the HTTP metadata endpoint on your instances. If
this parameter is not specified, the existing state is maintained.

If you specify a value of C<disabled>, you cannot access your instance
metadata.

Valid values are: C<"disabled">, C<"enabled">

=head2 HttpProtocolIpv6 => Str

Enables or disables the IPv6 endpoint for the instance metadata
service. Applies only if you enabled the HTTP metadata endpoint.

Valid values are: C<"disabled">, C<"enabled">

=head2 HttpPutResponseHopLimit => Int

The desired HTTP PUT response hop limit for instance metadata requests.
The larger the number, the further instance metadata requests can
travel. If no parameter is specified, the existing state is maintained.

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

Default:

=over

=item *

If the value of C<ImdsSupport> for the Amazon Machine Image (AMI) for
your instance is C<v2.0> and the account level default is set to
C<no-preference>, the default is C<required>.

=item *

If the value of C<ImdsSupport> for the Amazon Machine Image (AMI) for
your instance is C<v2.0>, but the account level default is set to C<V1
or V2>, the default is C<optional>.

=back

The default value can also be affected by other combinations of
parameters. For more information, see Order of precedence for instance
metadata options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html#instance-metadata-options-order-of-precedence)
in the I<Amazon EC2 User Guide>.

Valid values are: C<"optional">, C<"required">

=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 InstanceMetadataTags => Str

Set to C<enabled> to allow access to instance tags from the instance
metadata. Set to C<disabled> to turn off access to instance tags from
the instance metadata. For more information, see Work with instance
tags using the instance metadata
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS).

Valid values are: C<"disabled">, C<"enabled">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceMetadataOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

