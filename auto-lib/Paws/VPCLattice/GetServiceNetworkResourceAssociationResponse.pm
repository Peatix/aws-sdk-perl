
package Paws::VPCLattice::GetServiceNetworkResourceAssociationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has DnsEntry => (is => 'ro', isa => 'Paws::VPCLattice::DnsEntry', traits => ['NameInRequest'], request_name => 'dnsEntry');
  has FailureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureCode');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has IsManagedAssociation => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isManagedAssociation');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has PrivateDnsEntry => (is => 'ro', isa => 'Paws::VPCLattice::DnsEntry', traits => ['NameInRequest'], request_name => 'privateDnsEntry');
  has ResourceConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceConfigurationArn');
  has ResourceConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceConfigurationId');
  has ResourceConfigurationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceConfigurationName');
  has ServiceNetworkArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkArn');
  has ServiceNetworkId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkId');
  has ServiceNetworkName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkName');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetServiceNetworkResourceAssociationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the association.


=head2 CreatedAt => Str

The date and time that the association was created, in ISO-8601 format.


=head2 CreatedBy => Str

The account that created the association.


=head2 DnsEntry => L<Paws::VPCLattice::DnsEntry>

The DNS entry for the service.


=head2 FailureCode => Str

The failure code.


=head2 FailureReason => Str

The reason the association request failed.


=head2 Id => Str

The ID of the association.


=head2 IsManagedAssociation => Bool

Indicates whether the association is managed by Amazon.


=head2 LastUpdatedAt => Str

The most recent date and time that the association was updated, in
ISO-8601 format.


=head2 PrivateDnsEntry => L<Paws::VPCLattice::DnsEntry>

The private DNS entry for the service.


=head2 ResourceConfigurationArn => Str

The Amazon Resource Name (ARN) of the association.


=head2 ResourceConfigurationId => Str

The ID of the resource configuration that is associated with the
service network.


=head2 ResourceConfigurationName => Str

The name of the resource configuration that is associated with the
service network.


=head2 ServiceNetworkArn => Str

The Amazon Resource Name (ARN) of the service network that is
associated with the resource configuration.


=head2 ServiceNetworkId => Str

The ID of the service network that is associated with the resource
configuration.


=head2 ServiceNetworkName => Str

The name of the service network that is associated with the resource
configuration.


=head2 Status => Str

The status of the association.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"ACTIVE">, C<"PARTIAL">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"DELETE_FAILED">
=head2 _request_id => Str


=cut

