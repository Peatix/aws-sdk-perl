
package Paws::EC2::GetSecurityGroupsForVpc;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSecurityGroupsForVpc');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetSecurityGroupsForVpcResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetSecurityGroupsForVpc - Arguments for method GetSecurityGroupsForVpc on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSecurityGroupsForVpc on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetSecurityGroupsForVpc.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSecurityGroupsForVpc.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetSecurityGroupsForVpcResult = $ec2->GetSecurityGroupsForVpc(
      VpcId   => 'MyVpcId',
      DryRun  => 1,           # OPTIONAL
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
    my $NextToken = $GetSecurityGroupsForVpcResult->NextToken;
    my $SecurityGroupForVpcs =
      $GetSecurityGroupsForVpcResult->SecurityGroupForVpcs;

    # Returns a L<Paws::EC2::GetSecurityGroupsForVpcResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetSecurityGroupsForVpc>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters. If using multiple filters, the results include security
groups which match all filters.

=over

=item *

C<group-id>: The security group ID.

=item *

C<description>: The security group's description.

=item *

C<group-name>: The security group name.

=item *

C<owner-id>: The security group owner ID.

=item *

C<primary-vpc-id>: The VPC ID in which the security group was created.

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 B<REQUIRED> VpcId => Str

The VPC ID where the security group can be used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSecurityGroupsForVpc in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

