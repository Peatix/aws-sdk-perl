
package Paws::EC2::DescribeSecurityGroupRules;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SecurityGroupRuleIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupRuleId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityGroupRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeSecurityGroupRulesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSecurityGroupRules - Arguments for method DescribeSecurityGroupRules on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSecurityGroupRules on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeSecurityGroupRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSecurityGroupRules.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeSecurityGroupRulesResult = $ec2->DescribeSecurityGroupRules(
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
      MaxResults           => 1,             # OPTIONAL
      NextToken            => 'MyString',    # OPTIONAL
      SecurityGroupRuleIds => [
        'MyString', ...                      # OPTIONAL
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeSecurityGroupRulesResult->NextToken;
    my $SecurityGroupRules =
      $DescribeSecurityGroupRulesResult->SecurityGroupRules;

    # Returns a L<Paws::EC2::DescribeSecurityGroupRulesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeSecurityGroupRules>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<group-id> - The ID of the security group.

=item *

C<security-group-rule-id> - The ID of the security group rule.

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. This value can be between 5 and 1000. If this parameter is not
specified, then all items are returned. For more information, see
Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 SecurityGroupRuleIds => ArrayRef[Str|Undef]

The IDs of the security group rules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSecurityGroupRules in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

