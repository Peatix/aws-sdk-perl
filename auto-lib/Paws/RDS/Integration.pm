
package Paws::RDS::Integration;
  use Moose;
  has AdditionalEncryptionContext => (is => 'ro', isa => 'Paws::RDS::EncryptionContextMap');
  has CreateTime => (is => 'ro', isa => 'Str');
  has DataFilter => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::RDS::IntegrationError]', request_name => 'IntegrationError', traits => ['NameInRequest',]);
  has IntegrationArn => (is => 'ro', isa => 'Str');
  has IntegrationName => (is => 'ro', isa => 'Str');
  has KMSKeyId => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]', request_name => 'Tag', traits => ['NameInRequest',]);
  has TargetArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::Integration

=head1 ATTRIBUTES


=head2 AdditionalEncryptionContext => L<Paws::RDS::EncryptionContextMap>

The encryption context for the integration. For more information, see
Encryption context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<Amazon Web Services Key Management Service Developer Guide>.


=head2 CreateTime => Str

The time when the integration was created, in Universal Coordinated
Time (UTC).


=head2 DataFilter => Str

Data filters for the integration. These filters determine which tables
from the source database are sent to the target Amazon Redshift data
warehouse.


=head2 Description => Str

A description of the integration.


=head2 Errors => ArrayRef[L<Paws::RDS::IntegrationError>]

Any errors associated with the integration.


=head2 IntegrationArn => Str

The ARN of the integration.


=head2 IntegrationName => Str

The name of the integration.


=head2 KMSKeyId => Str

The Amazon Web Services Key Management System (Amazon Web Services KMS)
key identifier for the key used to to encrypt the integration.


=head2 SourceArn => Str

The Amazon Resource Name (ARN) of the database used as the source for
replication.


=head2 Status => Str

The current status of the integration.

Valid values are: C<"creating">, C<"active">, C<"modifying">, C<"failed">, C<"deleting">, C<"syncing">, C<"needs_attention">
=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]




=head2 TargetArn => Str

The ARN of the Redshift data warehouse used as the target for
replication.


=head2 _request_id => Str


=cut

