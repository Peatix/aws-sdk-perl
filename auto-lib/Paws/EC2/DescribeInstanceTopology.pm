
package Paws::EC2::DescribeInstanceTopology;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'GroupName' );
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'InstanceId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceTopology');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeInstanceTopologyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceTopology - Arguments for method DescribeInstanceTopology on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceTopology on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeInstanceTopology.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceTopology.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeInstanceTopologyResult = $ec2->DescribeInstanceTopology(
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
      GroupNames  => [ 'MyPlacementGroupName', ... ],    # OPTIONAL
      InstanceIds => [ 'MyInstanceId',         ... ],    # OPTIONAL
      MaxResults  => 1,                                  # OPTIONAL
      NextToken   => 'MyString',                         # OPTIONAL
    );

    # Results:
    my $Instances = $DescribeInstanceTopologyResult->Instances;
    my $NextToken = $DescribeInstanceTopologyResult->NextToken;

    # Returns a L<Paws::EC2::DescribeInstanceTopologyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeInstanceTopology>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<availability-zone> - The name of the Availability Zone (for example,
C<us-west-2a>) or Local Zone (for example, C<us-west-2-lax-1b>) that
the instance is in.

=item *

C<instance-type> - The instance type (for example, C<p4d.24xlarge>) or
instance family (for example, C<p4d*>). You can use the C<*> wildcard
to match zero or more characters, or the C<?> wildcard to match zero or
one character.

=item *

C<zone-id> - The ID of the Availability Zone (for example, C<usw2-az2>)
or Local Zone (for example, C<usw2-lax1-az1>) that the instance is in.

=back




=head2 GroupNames => ArrayRef[Str|Undef]

The name of the placement group that each instance is in.

Constraints: Maximum 100 explicitly specified placement group names.



=head2 InstanceIds => ArrayRef[Str|Undef]

The instance IDs.

Default: Describes all your instances.

Constraints: Maximum 100 explicitly specified instance IDs.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).

You can't specify this parameter and the instance IDs parameter in the
same request.

Default: C<20>



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceTopology in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

