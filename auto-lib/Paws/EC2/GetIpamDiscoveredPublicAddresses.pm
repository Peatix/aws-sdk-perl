
package Paws::EC2::GetIpamDiscoveredPublicAddresses;
  use Moose;
  has AddressRegion => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IpamResourceDiscoveryId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIpamDiscoveredPublicAddresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetIpamDiscoveredPublicAddressesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamDiscoveredPublicAddresses - Arguments for method GetIpamDiscoveredPublicAddresses on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIpamDiscoveredPublicAddresses on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetIpamDiscoveredPublicAddresses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIpamDiscoveredPublicAddresses.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetIpamDiscoveredPublicAddressesResult =
      $ec2->GetIpamDiscoveredPublicAddresses(
      AddressRegion           => 'MyString',
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
    my $IpamDiscoveredPublicAddresses =
      $GetIpamDiscoveredPublicAddressesResult->IpamDiscoveredPublicAddresses;
    my $NextToken = $GetIpamDiscoveredPublicAddressesResult->NextToken;
    my $OldestSampleTime =
      $GetIpamDiscoveredPublicAddressesResult->OldestSampleTime;

    # Returns a L<Paws::EC2::GetIpamDiscoveredPublicAddressesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetIpamDiscoveredPublicAddresses>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressRegion => Str

The Amazon Web Services Region for the IP address.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

Filters.



=head2 B<REQUIRED> IpamResourceDiscoveryId => Str

An IPAM resource discovery ID.



=head2 MaxResults => Int

The maximum number of IPAM discovered public addresses to return in one
page of results.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIpamDiscoveredPublicAddresses in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

