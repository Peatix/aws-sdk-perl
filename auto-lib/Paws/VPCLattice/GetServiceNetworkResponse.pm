
package Paws::VPCLattice::GetServiceNetworkResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has AuthType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authType');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has NumberOfAssociatedServices => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfAssociatedServices');
  has NumberOfAssociatedVPCs => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfAssociatedVPCs');
  has SharingConfig => (is => 'ro', isa => 'Paws::VPCLattice::SharingConfig', traits => ['NameInRequest'], request_name => 'sharingConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetServiceNetworkResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the service network.


=head2 AuthType => Str

The type of IAM policy.

Valid values are: C<"NONE">, C<"AWS_IAM">
=head2 CreatedAt => Str

The date and time that the service network was created, in ISO-8601
format.


=head2 Id => Str

The ID of the service network.


=head2 LastUpdatedAt => Str

The date and time of the last update, in ISO-8601 format.


=head2 Name => Str

The name of the service network.


=head2 NumberOfAssociatedServices => Int

The number of services associated with the service network.


=head2 NumberOfAssociatedVPCs => Int

The number of VPCs associated with the service network.


=head2 SharingConfig => L<Paws::VPCLattice::SharingConfig>

Specifies if the service network is enabled for sharing.


=head2 _request_id => Str


=cut

