
package Paws::EC2::GetIpamAddressHistory;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has EndTime => (is => 'ro', isa => 'Str');
  has IpamScopeId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIpamAddressHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetIpamAddressHistoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamAddressHistory - Arguments for method GetIpamAddressHistory on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIpamAddressHistory on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetIpamAddressHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIpamAddressHistory.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetIpamAddressHistoryResult = $ec2->GetIpamAddressHistory(
      Cidr        => 'MyString',
      IpamScopeId => 'MyIpamScopeId',
      DryRun      => 1,                        # OPTIONAL
      EndTime     => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults  => 1,                        # OPTIONAL
      NextToken   => 'MyNextToken',            # OPTIONAL
      StartTime   => '1970-01-01T01:00:00',    # OPTIONAL
      VpcId       => 'MyString',               # OPTIONAL
    );

    # Results:
    my $HistoryRecords = $GetIpamAddressHistoryResult->HistoryRecords;
    my $NextToken      = $GetIpamAddressHistoryResult->NextToken;

    # Returns a L<Paws::EC2::GetIpamAddressHistoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetIpamAddressHistory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cidr => Str

The CIDR you want the history of. The CIDR can be an IPv4 or IPv6 IP
address range. If you enter a /16 IPv4 CIDR, you will get records that
match it exactly. You will not get records for any subnets within the
/16 CIDR.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EndTime => Str

The end of the time period for which you are looking for history. If
you omit this option, it will default to the current time.



=head2 B<REQUIRED> IpamScopeId => Str

The ID of the IPAM scope that the CIDR is in.



=head2 MaxResults => Int

The maximum number of historical results you would like returned per
page. Defaults to 100.



=head2 NextToken => Str

The token for the next page of results.



=head2 StartTime => Str

The start of the time period for which you are looking for history. If
you omit this option, it will default to the value of EndTime.



=head2 VpcId => Str

The ID of the VPC you want your history records filtered by.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIpamAddressHistory in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

