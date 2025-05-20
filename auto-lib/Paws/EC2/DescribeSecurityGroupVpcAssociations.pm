
package Paws::EC2::DescribeSecurityGroupVpcAssociations;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityGroupVpcAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeSecurityGroupVpcAssociationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSecurityGroupVpcAssociations - Arguments for method DescribeSecurityGroupVpcAssociations on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSecurityGroupVpcAssociations on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeSecurityGroupVpcAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSecurityGroupVpcAssociations.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeSecurityGroupVpcAssociationsResult =
      $ec2->DescribeSecurityGroupVpcAssociations(
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
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeSecurityGroupVpcAssociationsResult->NextToken;
    my $SecurityGroupVpcAssociations =
      $DescribeSecurityGroupVpcAssociationsResult->SecurityGroupVpcAssociations;

    # Returns a L<Paws::EC2::DescribeSecurityGroupVpcAssociationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeSecurityGroupVpcAssociations>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

Security group VPC association filters.

=over

=item *

C<group-id>: The security group ID.

=item *

C<vpc-id>: The ID of the associated VPC.

=item *

C<vpc-owner-id>: The account ID of the VPC owner.

=item *

C<state>: The state of the association.

=item *

C<tag:E<lt>keyE<gt>>: The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key>: The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

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

This class forms part of L<Paws>, documenting arguments for method DescribeSecurityGroupVpcAssociations in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

