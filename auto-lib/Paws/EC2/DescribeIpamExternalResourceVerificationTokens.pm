
package Paws::EC2::DescribeIpamExternalResourceVerificationTokens;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IpamExternalResourceVerificationTokenIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'IpamExternalResourceVerificationTokenId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIpamExternalResourceVerificationTokens');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeIpamExternalResourceVerificationTokensResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeIpamExternalResourceVerificationTokens - Arguments for method DescribeIpamExternalResourceVerificationTokens on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIpamExternalResourceVerificationTokens on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeIpamExternalResourceVerificationTokens.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIpamExternalResourceVerificationTokens.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeIpamExternalResourceVerificationTokensResult =
      $ec2->DescribeIpamExternalResourceVerificationTokens(
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
      IpamExternalResourceVerificationTokenIds => [
        'MyString', ...    # OPTIONAL
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $IpamExternalResourceVerificationTokens =
      $DescribeIpamExternalResourceVerificationTokensResult
      ->IpamExternalResourceVerificationTokens;
    my $NextToken =
      $DescribeIpamExternalResourceVerificationTokensResult->NextToken;

# Returns a L<Paws::EC2::DescribeIpamExternalResourceVerificationTokensResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeIpamExternalResourceVerificationTokens>

=head1 ATTRIBUTES


=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters for the request. For more information about
filtering, see Filtering CLI output
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html).

Available filters:

=over

=item *

C<ipam-arn>

=item *

C<ipam-external-resource-verification-token-arn>

=item *

C<ipam-external-resource-verification-token-id>

=item *

C<ipam-id>

=item *

C<ipam-region>

=item *

C<state>

=item *

C<status>

=item *

C<token-name>

=item *

C<token-value>

=back




=head2 IpamExternalResourceVerificationTokenIds => ArrayRef[Str|Undef]

Verification token IDs.



=head2 MaxResults => Int

The maximum number of tokens to return in one page of results.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIpamExternalResourceVerificationTokens in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

