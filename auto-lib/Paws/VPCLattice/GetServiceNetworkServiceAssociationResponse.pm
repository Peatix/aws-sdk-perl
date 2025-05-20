
package Paws::VPCLattice::GetServiceNetworkServiceAssociationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has CustomDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainName');
  has DnsEntry => (is => 'ro', isa => 'Paws::VPCLattice::DnsEntry', traits => ['NameInRequest'], request_name => 'dnsEntry');
  has FailureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureCode');
  has FailureMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureMessage');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has ServiceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceArn');
  has ServiceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceId');
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName');
  has ServiceNetworkArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkArn');
  has ServiceNetworkId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkId');
  has ServiceNetworkName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkName');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetServiceNetworkServiceAssociationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the association.


=head2 CreatedAt => Str

The date and time that the association was created, in ISO-8601 format.


=head2 CreatedBy => Str

The account that created the association.


=head2 CustomDomainName => Str

The custom domain name of the service.


=head2 DnsEntry => L<Paws::VPCLattice::DnsEntry>

The DNS name of the service.


=head2 FailureCode => Str

The failure code.


=head2 FailureMessage => Str

The failure message.


=head2 Id => Str

The ID of the service network and service association.


=head2 ServiceArn => Str

The Amazon Resource Name (ARN) of the service.


=head2 ServiceId => Str

The ID of the service.


=head2 ServiceName => Str

The name of the service.


=head2 ServiceNetworkArn => Str

The Amazon Resource Name (ARN) of the service network.


=head2 ServiceNetworkId => Str

The ID of the service network.


=head2 ServiceNetworkName => Str

The name of the service network.


=head2 Status => Str

The status of the association.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"ACTIVE">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"DELETE_FAILED">
=head2 _request_id => Str


=cut

