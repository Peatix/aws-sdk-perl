
package Paws::EC2::GetIpamDiscoveredAccounts;
  use Moose;
  has DiscoveryRegion => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IpamResourceDiscoveryId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIpamDiscoveredAccounts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetIpamDiscoveredAccountsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamDiscoveredAccounts - Arguments for method GetIpamDiscoveredAccounts on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIpamDiscoveredAccounts on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetIpamDiscoveredAccounts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIpamDiscoveredAccounts.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetIpamDiscoveredAccountsResult = $ec2->GetIpamDiscoveredAccounts(
      DiscoveryRegion         => 'MyString',
      IpamResourceDiscoveryId => 'MyIpamResourceDiscoveryId',
      DryRun                  => 1,                             # OPTIONAL
      Filters                 => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],                        # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $IpamDiscoveredAccounts =
      $GetIpamDiscoveredAccountsResult->IpamDiscoveredAccounts;
    my $NextToken = $GetIpamDiscoveredAccountsResult->NextToken;

    # Returns a L<Paws::EC2::GetIpamDiscoveredAccountsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetIpamDiscoveredAccounts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DiscoveryRegion => Str

The Amazon Web Services Region that the account information is returned
from.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

Discovered account filters.



=head2 B<REQUIRED> IpamResourceDiscoveryId => Str

A resource discovery ID.



=head2 MaxResults => Int

The maximum number of discovered accounts to return in one page of
results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIpamDiscoveredAccounts in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

