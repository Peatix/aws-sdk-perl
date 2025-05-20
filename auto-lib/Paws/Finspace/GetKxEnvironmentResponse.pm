
package Paws::Finspace::GetKxEnvironmentResponse;
  use Moose;
  has AvailabilityZoneIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'availabilityZoneIds');
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountId');
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateAuthorityArn');
  has CreationTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTimestamp');
  has CustomDNSConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::CustomDNSServer]', traits => ['NameInRequest'], request_name => 'customDNSConfiguration');
  has DedicatedServiceAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dedicatedServiceAccountId');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DnsStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dnsStatus');
  has EnvironmentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentArn');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has TgwStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tgwStatus');
  has TransitGatewayConfiguration => (is => 'ro', isa => 'Paws::Finspace::TransitGatewayConfiguration', traits => ['NameInRequest'], request_name => 'transitGatewayConfiguration');
  has UpdateTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTimestamp');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxEnvironmentResponse

=head1 ATTRIBUTES


=head2 AvailabilityZoneIds => ArrayRef[Str|Undef]

The identifier of the availability zones where subnets for the
environment are created.


=head2 AwsAccountId => Str

The unique identifier of the AWS account that is used to create the kdb
environment.


=head2 CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) of the certificate authority of the kdb
environment.


=head2 CreationTimestamp => Str

The timestamp at which the kdb environment was created in FinSpace.


=head2 CustomDNSConfiguration => ArrayRef[L<Paws::Finspace::CustomDNSServer>]

A list of DNS server name and server IP. This is used to set up
Route-53 outbound resolvers.


=head2 DedicatedServiceAccountId => Str

A unique identifier for the AWS environment infrastructure account.


=head2 Description => Str

A description for the kdb environment.


=head2 DnsStatus => Str

The status of DNS configuration.

Valid values are: C<"NONE">, C<"UPDATE_REQUESTED">, C<"UPDATING">, C<"FAILED_UPDATE">, C<"SUCCESSFULLY_UPDATED">
=head2 EnvironmentArn => Str

The ARN identifier of the environment.


=head2 EnvironmentId => Str

A unique identifier for the kdb environment.


=head2 ErrorMessage => Str

Specifies the error message that appears if a flow fails.


=head2 KmsKeyId => Str

The KMS key ID to encrypt your data in the FinSpace environment.


=head2 Name => Str

The name of the kdb environment.


=head2 Status => Str

The status of the kdb environment.

Valid values are: C<"CREATE_REQUESTED">, C<"CREATING">, C<"CREATED">, C<"DELETE_REQUESTED">, C<"DELETING">, C<"DELETED">, C<"FAILED_CREATION">, C<"RETRY_DELETION">, C<"FAILED_DELETION">, C<"UPDATE_NETWORK_REQUESTED">, C<"UPDATING_NETWORK">, C<"FAILED_UPDATING_NETWORK">, C<"SUSPENDED">
=head2 TgwStatus => Str

The status of the network configuration.

Valid values are: C<"NONE">, C<"UPDATE_REQUESTED">, C<"UPDATING">, C<"FAILED_UPDATE">, C<"SUCCESSFULLY_UPDATED">
=head2 TransitGatewayConfiguration => L<Paws::Finspace::TransitGatewayConfiguration>




=head2 UpdateTimestamp => Str

The timestamp at which the kdb environment was updated.


=head2 _request_id => Str


=cut

