
package Paws::SSM::DescribeAvailablePatches;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::PatchOrchestratorFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAvailablePatches');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeAvailablePatchesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAvailablePatches - Arguments for method DescribeAvailablePatches on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAvailablePatches on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeAvailablePatches.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAvailablePatches.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeAvailablePatchesResult = $ssm->DescribeAvailablePatches(
      Filters => [
        {
          Key    => 'MyPatchOrchestratorFilterKey', # min: 1, max: 128; OPTIONAL
          Values => [
            'MyPatchOrchestratorFilterValue', ...    # min: 1, max: 256
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeAvailablePatchesResult->NextToken;
    my $Patches   = $DescribeAvailablePatchesResult->Patches;

    # Returns a L<Paws::SSM::DescribeAvailablePatchesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeAvailablePatches>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::PatchOrchestratorFilter>]

Each element in the array is a structure containing a key-value pair.

B<Windows Server>

Supported keys for Windows Server managed node patches include the
following:

=over

=item *

B<C<PATCH_SET>>

Sample values: C<OS> | C<APPLICATION>

=item *

B<C<PRODUCT>>

Sample values: C<WindowsServer2012> | C<Office 2010> |
C<MicrosoftDefenderAntivirus>

=item *

B<C<PRODUCT_FAMILY>>

Sample values: C<Windows> | C<Office>

=item *

B<C<MSRC_SEVERITY>>

Sample values: C<ServicePacks> | C<Important> | C<Moderate>

=item *

B<C<CLASSIFICATION>>

Sample values: C<ServicePacks> | C<SecurityUpdates> |
C<DefinitionUpdates>

=item *

B<C<PATCH_ID>>

Sample values: C<KB123456> | C<KB4516046>

=back

B<Linux>

When specifying filters for Linux patches, you must specify a key-pair
for C<PRODUCT>. For example, using the Command Line Interface (CLI),
the following command fails:

C<aws ssm describe-available-patches --filters
Key=CVE_ID,Values=CVE-2018-3615>

However, the following command succeeds:

C<aws ssm describe-available-patches --filters
Key=PRODUCT,Values=AmazonLinux2018.03 Key=CVE_ID,Values=CVE-2018-3615>

Supported keys for Linux managed node patches include the following:

=over

=item *

B<C<PRODUCT>>

Sample values: C<AmazonLinux2018.03> | C<AmazonLinux2.0>

=item *

B<C<NAME>>

Sample values: C<kernel-headers> | C<samba-python> | C<php>

=item *

B<C<SEVERITY>>

Sample values: C<Critical> | C<Important> | C<Medium> | C<Low>

=item *

B<C<EPOCH>>

Sample values: C<0> | C<1>

=item *

B<C<VERSION>>

Sample values: C<78.6.1> | C<4.10.16>

=item *

B<C<RELEASE>>

Sample values: C<9.56.amzn1> | C<1.amzn2>

=item *

B<C<ARCH>>

Sample values: C<i686> | C<x86_64>

=item *

B<C<REPOSITORY>>

Sample values: C<Core> | C<Updates>

=item *

B<C<ADVISORY_ID>>

Sample values: C<ALAS-2018-1058> | C<ALAS2-2021-1594>

=item *

B<C<CVE_ID>>

Sample values: C<CVE-2018-3615> | C<CVE-2020-1472>

=item *

B<C<BUGZILLA_ID>>

Sample values: C<1463241>

=back




=head2 MaxResults => Int

The maximum number of patches to return (per page).



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAvailablePatches in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

