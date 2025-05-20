
package Paws::Glue::ModifyIntegrationResponse;
  use Moose;
  has AdditionalEncryptionContext => (is => 'ro', isa => 'Paws::Glue::IntegrationAdditionalEncryptionContextMap');
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has DataFilter => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::IntegrationError]');
  has IntegrationArn => (is => 'ro', isa => 'Str', required => 1);
  has IntegrationName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Tag]');
  has TargetArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ModifyIntegrationResponse

=head1 ATTRIBUTES


=head2 AdditionalEncryptionContext => L<Paws::Glue::IntegrationAdditionalEncryptionContextMap>

An optional set of non-secret keyE<ndash>value pairs that contains
additional contextual information for encryption.


=head2 B<REQUIRED> CreateTime => Str

The time when the integration was created, in UTC.


=head2 DataFilter => Str

Selects source tables for the integration using Maxwell filter syntax.


=head2 Description => Str

A description of the integration.


=head2 Errors => ArrayRef[L<Paws::Glue::IntegrationError>]

A list of errors associated with the integration modification.


=head2 B<REQUIRED> IntegrationArn => Str

The Amazon Resource Name (ARN) for the integration.


=head2 B<REQUIRED> IntegrationName => Str

A unique name for an integration in Glue.


=head2 KmsKeyId => Str

The ARN of a KMS key used for encrypting the channel.


=head2 B<REQUIRED> SourceArn => Str

The ARN of the source for the integration.


=head2 B<REQUIRED> Status => Str

The status of the integration being modified.

The possible statuses are:

=over

=item *

CREATING: The integration is being created.

=item *

ACTIVE: The integration creation succeeds.

=item *

MODIFYING: The integration is being modified.

=item *

FAILED: The integration creation fails.

=item *

DELETING: The integration is deleted.

=item *

SYNCING: The integration is synchronizing.

=item *

NEEDS_ATTENTION: The integration needs attention, such as
synchronization.

=back


Valid values are: C<"CREATING">, C<"ACTIVE">, C<"MODIFYING">, C<"FAILED">, C<"DELETING">, C<"SYNCING">, C<"NEEDS_ATTENTION">
=head2 Tags => ArrayRef[L<Paws::Glue::Tag>]

Metadata assigned to the resource consisting of a list of key-value
pairs.


=head2 B<REQUIRED> TargetArn => Str

The ARN of the target for the integration.


=head2 _request_id => Str


=cut

1;