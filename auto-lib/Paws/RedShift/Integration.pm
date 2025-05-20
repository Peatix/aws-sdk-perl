
package Paws::RedShift::Integration;
  use Moose;
  has AdditionalEncryptionContext => (is => 'ro', isa => 'Paws::RedShift::EncryptionContextMap');
  has CreateTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::IntegrationError]', request_name => 'IntegrationError', traits => ['NameInRequest',]);
  has IntegrationArn => (is => 'ro', isa => 'Str');
  has IntegrationName => (is => 'ro', isa => 'Str');
  has KMSKeyId => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]', request_name => 'Tag', traits => ['NameInRequest',]);
  has TargetArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::Integration

=head1 ATTRIBUTES


=head2 AdditionalEncryptionContext => L<Paws::RedShift::EncryptionContextMap>

The encryption context for the integration. For more information, see
Encryption context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<Amazon Web Services Key Management Service Developer Guide>.


=head2 CreateTime => Str

The time (UTC) when the integration was created.


=head2 Description => Str

The description of the integration.


=head2 Errors => ArrayRef[L<Paws::RedShift::IntegrationError>]

Any errors associated with the integration.


=head2 IntegrationArn => Str

The Amazon Resource Name (ARN) of the integration.


=head2 IntegrationName => Str

The name of the integration.


=head2 KMSKeyId => Str

The Key Management Service (KMS) key identifier for the key used to
encrypt the integration.


=head2 SourceArn => Str

The Amazon Resource Name (ARN) of the database used as the source for
replication.


=head2 Status => Str

The current status of the integration.

Valid values are: C<"creating">, C<"active">, C<"modifying">, C<"failed">, C<"deleting">, C<"syncing">, C<"needs_attention">
=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

The list of tags associated with the integration.


=head2 TargetArn => Str

The Amazon Resource Name (ARN) of the Amazon Redshift data warehouse to
use as the target for replication.


=head2 _request_id => Str


=cut

