
package Paws::Finspace::CreateKxEnvironmentResponse;
  use Moose;
  has CreationTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTimestamp');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentArn');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateKxEnvironmentResponse

=head1 ATTRIBUTES


=head2 CreationTimestamp => Str

The timestamp at which the kdb environment was created in FinSpace.


=head2 Description => Str

A description for the kdb environment.


=head2 EnvironmentArn => Str

The ARN identifier of the environment.


=head2 EnvironmentId => Str

A unique identifier for the kdb environment.


=head2 KmsKeyId => Str

The KMS key ID to encrypt your data in the FinSpace environment.


=head2 Name => Str

The name of the kdb environment.


=head2 Status => Str

The status of the kdb environment.

Valid values are: C<"CREATE_REQUESTED">, C<"CREATING">, C<"CREATED">, C<"DELETE_REQUESTED">, C<"DELETING">, C<"DELETED">, C<"FAILED_CREATION">, C<"RETRY_DELETION">, C<"FAILED_DELETION">, C<"UPDATE_NETWORK_REQUESTED">, C<"UPDATING_NETWORK">, C<"FAILED_UPDATING_NETWORK">, C<"SUSPENDED">
=head2 _request_id => Str


=cut

