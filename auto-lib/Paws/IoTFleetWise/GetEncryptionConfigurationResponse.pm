
package Paws::IoTFleetWise::GetEncryptionConfigurationResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime' );
  has EncryptionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionStatus' , required => 1);
  has EncryptionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionType' , required => 1);
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage' );
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' );
  has LastModificationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModificationTime' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetEncryptionConfigurationResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time when encryption was configured in seconds since epoch (January
1, 1970 at midnight UTC time).


=head2 B<REQUIRED> EncryptionStatus => Str

The encryption status.

Valid values are: C<"PENDING">, C<"SUCCESS">, C<"FAILURE">
=head2 B<REQUIRED> EncryptionType => Str

The type of encryption. Set to C<KMS_BASED_ENCRYPTION> to use a KMS key
that you own and manage. Set to C<FLEETWISE_DEFAULT_ENCRYPTION> to use
an Amazon Web Services managed key that is owned by the Amazon Web
Services IoT FleetWise service account.

Valid values are: C<"KMS_BASED_ENCRYPTION">, C<"FLEETWISE_DEFAULT_ENCRYPTION">
=head2 ErrorMessage => Str

The error message that describes why encryption settings couldn't be
configured, if applicable.


=head2 KmsKeyId => Str

The ID of the KMS key that is used for encryption.


=head2 LastModificationTime => Str

The time when encryption was last updated in seconds since epoch
(January 1, 1970 at midnight UTC time).


=head2 _request_id => Str


=cut

1;