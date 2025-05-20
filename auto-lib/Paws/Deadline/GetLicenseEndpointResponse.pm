
package Paws::Deadline::GetLicenseEndpointResponse;
  use Moose;
  has DnsName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dnsName');
  has LicenseEndpointId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'licenseEndpointId', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetLicenseEndpointResponse

=head1 ATTRIBUTES


=head2 DnsName => Str

The DNS name.


=head2 B<REQUIRED> LicenseEndpointId => Str

The license endpoint ID.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The security group IDs for the license endpoint.


=head2 B<REQUIRED> Status => Str

The status of the license endpoint.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"READY">, C<"NOT_READY">
=head2 B<REQUIRED> StatusMessage => Str

The status message of the license endpoint.


=head2 SubnetIds => ArrayRef[Str|Undef]

The subnet IDs.


=head2 VpcId => Str

The VCP(virtual private cloud) ID associated with the license endpoint.


=head2 _request_id => Str


=cut

