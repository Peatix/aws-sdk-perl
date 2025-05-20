
package Paws::CloudWatchLogs::DescribeAccountPolicies;
  use Moose;
  has AccountIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIdentifiers' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyName' );
  has PolicyType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeAccountPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeAccountPolicies - Arguments for method DescribeAccountPolicies on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountPolicies on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DescribeAccountPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountPolicies.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DescribeAccountPoliciesResponse = $logs->DescribeAccountPolicies(
      PolicyType         => 'DATA_PROTECTION_POLICY',
      AccountIdentifiers => [
        'MyAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      NextToken  => 'MyNextToken',     # OPTIONAL
      PolicyName => 'MyPolicyName',    # OPTIONAL
    );

    # Results:
    my $AccountPolicies = $DescribeAccountPoliciesResponse->AccountPolicies;
    my $NextToken       = $DescribeAccountPoliciesResponse->NextToken;

    # Returns a L<Paws::CloudWatchLogs::DescribeAccountPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DescribeAccountPolicies>

=head1 ATTRIBUTES


=head2 AccountIdentifiers => ArrayRef[Str|Undef]

If you are using an account that is set up as a monitoring account for
CloudWatch unified cross-account observability, you can use this to
specify the account ID of a source account. If you do, the operation
returns the account policy for the specified account. Currently, you
can specify only one account ID in this parameter.

If you omit this parameter, only the policy in the current account is
returned.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 PolicyName => Str

Use this parameter to limit the returned policies to only the policy
with the name that you specify.



=head2 B<REQUIRED> PolicyType => Str

Use this parameter to limit the returned policies to only the policies
that match the policy type that you specify.

Valid values are: C<"DATA_PROTECTION_POLICY">, C<"SUBSCRIPTION_FILTER_POLICY">, C<"FIELD_INDEX_POLICY">, C<"TRANSFORMER_POLICY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountPolicies in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

