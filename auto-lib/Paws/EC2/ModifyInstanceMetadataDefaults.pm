
package Paws::EC2::ModifyInstanceMetadataDefaults;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has HttpEndpoint => (is => 'ro', isa => 'Str');
  has HttpPutResponseHopLimit => (is => 'ro', isa => 'Int');
  has HttpTokens => (is => 'ro', isa => 'Str');
  has InstanceMetadataTags => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceMetadataDefaults');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyInstanceMetadataDefaultsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceMetadataDefaults - Arguments for method ModifyInstanceMetadataDefaults on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceMetadataDefaults on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstanceMetadataDefaults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceMetadataDefaults.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyInstanceMetadataDefaultsResult =
      $ec2->ModifyInstanceMetadataDefaults(
      DryRun                  => 1,             # OPTIONAL
      HttpEndpoint            => 'disabled',    # OPTIONAL
      HttpPutResponseHopLimit => 1,             # OPTIONAL
      HttpTokens              => 'optional',    # OPTIONAL
      InstanceMetadataTags    => 'disabled',    # OPTIONAL
      );

    # Results:
    my $Return = $ModifyInstanceMetadataDefaultsResult->Return;

    # Returns a L<Paws::EC2::ModifyInstanceMetadataDefaultsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstanceMetadataDefaults>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 HttpEndpoint => Str

Enables or disables the IMDS endpoint on an instance. When disabled,
the instance metadata can't be accessed.

Valid values are: C<"disabled">, C<"enabled">, C<"no-preference">

=head2 HttpPutResponseHopLimit => Int

The maximum number of hops that the metadata token can travel. To
indicate no preference, specify C<-1>.

Possible values: Integers from C<1> to C<64>, and C<-1> to indicate no
preference



=head2 HttpTokens => Str

Indicates whether IMDSv2 is required.

=over

=item *

C<optional> E<ndash> IMDSv2 is optional, which means that you can use
either IMDSv2 or IMDSv1.

=item *

C<required> E<ndash> IMDSv2 is required, which means that IMDSv1 is
disabled, and you must use IMDSv2.

=back


Valid values are: C<"optional">, C<"required">, C<"no-preference">

=head2 InstanceMetadataTags => Str

Enables or disables access to an instance's tags from the instance
metadata. For more information, see Work with instance tags using the
instance metadata
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS)
in the I<Amazon EC2 User Guide>.

Valid values are: C<"disabled">, C<"enabled">, C<"no-preference">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceMetadataDefaults in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

