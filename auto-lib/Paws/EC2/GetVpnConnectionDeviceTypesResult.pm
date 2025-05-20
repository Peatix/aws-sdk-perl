
package Paws::EC2::GetVpnConnectionDeviceTypesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has VpnConnectionDeviceTypes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpnConnectionDeviceType]', request_name => 'vpnConnectionDeviceTypeSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetVpnConnectionDeviceTypesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<NextToken> value to include in a future
C<GetVpnConnectionDeviceTypes> request. When the results of a
C<GetVpnConnectionDeviceTypes> request exceed C<MaxResults>, this value
can be used to retrieve the next page of results. This value is null
when there are no more results to return.


=head2 VpnConnectionDeviceTypes => ArrayRef[L<Paws::EC2::VpnConnectionDeviceType>]

List of customer gateway devices that have a sample configuration file
available for use.


=head2 _request_id => Str


=cut

