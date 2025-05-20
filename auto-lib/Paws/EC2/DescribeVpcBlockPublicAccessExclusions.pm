
package Paws::EC2::DescribeVpcBlockPublicAccessExclusions;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ExclusionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ExclusionId' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcBlockPublicAccessExclusions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVpcBlockPublicAccessExclusionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcBlockPublicAccessExclusions - Arguments for method DescribeVpcBlockPublicAccessExclusions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVpcBlockPublicAccessExclusions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVpcBlockPublicAccessExclusions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVpcBlockPublicAccessExclusions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeVpcBlockPublicAccessExclusionsResult =
      $ec2->DescribeVpcBlockPublicAccessExclusions(
      DryRun       => 1,                                              # OPTIONAL
      ExclusionIds => [ 'MyVpcBlockPublicAccessExclusionId', ... ],   # OPTIONAL
      Filters      => [
        {
          Name   => 'MyString',                                       # OPTIONAL
          Values => [
            'MyString', ...                                           # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeVpcBlockPublicAccessExclusionsResult->NextToken;
    my $VpcBlockPublicAccessExclusions =
      $DescribeVpcBlockPublicAccessExclusionsResult
      ->VpcBlockPublicAccessExclusions;

  # Returns a L<Paws::EC2::DescribeVpcBlockPublicAccessExclusionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVpcBlockPublicAccessExclusions>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ExclusionIds => ArrayRef[Str|Undef]

IDs of exclusions.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

Filters for the request:

=over

=item *

C<resource-arn> - The Amazon Resource Name (ARN) of a exclusion.

=item *

C<internet-gateway-exclusion-mode> - The mode of a VPC BPA exclusion.
Possible values: C<allow-bidirectional | allow-egress>.

=item *

C<state> - The state of VPC BPA. Possible values: C<create-in-progress
| create-complete | update-in-progress | update-complete |
delete-in-progress | deleted-complete | disable-in-progress |
disable-complete>

=item *

C<tag> - The key/value combination of a tag assigned to the resource.
Use the tag key in the filter name and the tag value as the filter
value. For example, to find all resources that have a tag with the key
C<Owner> and the value C<TeamA>, specify C<tag:Owner> for the filter
name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<tag-value>: The value of a tag assigned to the resource. Use this
filter to find all resources assigned a tag with a specific value,
regardless of the tag key.

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVpcBlockPublicAccessExclusions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

