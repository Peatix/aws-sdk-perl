
package Paws::EC2::DescribeInstanceImageMetadata;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'InstanceId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceImageMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeInstanceImageMetadataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceImageMetadata - Arguments for method DescribeInstanceImageMetadata on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceImageMetadata on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeInstanceImageMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceImageMetadata.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeInstanceImageMetadataResult =
      $ec2->DescribeInstanceImageMetadata(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      InstanceIds => [ 'MyInstanceId', ... ],    # OPTIONAL
      MaxResults  => 1,                          # OPTIONAL
      NextToken   => 'MyString',                 # OPTIONAL
      );

    # Results:
    my $InstanceImageMetadata =
      $DescribeInstanceImageMetadataResult->InstanceImageMetadata;
    my $NextToken = $DescribeInstanceImageMetadataResult->NextToken;

    # Returns a L<Paws::EC2::DescribeInstanceImageMetadataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeInstanceImageMetadata>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<availability-zone> - The name of the Availability Zone (for example,
C<us-west-2a>) or Local Zone (for example, C<us-west-2-lax-1b>) of the
instance.

=item *

C<instance-id> - The ID of the instance.

=item *

C<image-allowed> - A Boolean that indicates whether the image meets the
criteria specified for Allowed AMIs.

=item *

C<instance-state-name> - The state of the instance (C<pending> |
C<running> | C<shutting-down> | C<terminated> | C<stopping> |
C<stopped>).

=item *

C<instance-type> - The type of instance (for example, C<t3.micro>).

=item *

C<launch-time> - The time when the instance was launched, in the ISO
8601 format in the UTC time zone (YYYY-MM-DDThh:mm:ss.sssZ), for
example, C<2023-09-29T11:04:43.305Z>. You can use a wildcard (C<*>),
for example, C<2023-09-29T*>, which matches an entire day.

=item *

C<owner-alias> - The owner alias (C<amazon> | C<aws-marketplace> |
C<aws-backup-vault>). The valid aliases are defined in an
Amazon-maintained list. This is not the Amazon Web Services account
alias that can be set using the IAM console. We recommend that you use
the C<Owner> request parameter instead of this filter.

=item *

C<owner-id> - The Amazon Web Services account ID of the owner. We
recommend that you use the C<Owner> request parameter instead of this
filter.

=item *

C<tag:E<lt>keyE<gt>> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<zone-id> - The ID of the Availability Zone (for example, C<usw2-az2>)
or Local Zone (for example, C<usw2-lax1-az1>) of the instance.

=back




=head2 InstanceIds => ArrayRef[Str|Undef]

The instance IDs.

If you don't specify an instance ID or filters, the output includes
information for all instances.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).

Default: 1000



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceImageMetadata in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

