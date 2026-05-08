
package Paws::CloudWatchEvents::UpdateArchive;
  use Moose;
  has ArchiveName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EventPattern => (is => 'ro', isa => 'Str');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has RetentionDays => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::UpdateArchiveResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::UpdateArchive - Arguments for method UpdateArchive on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateArchive on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method UpdateArchive.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateArchive.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $UpdateArchiveResponse = $events->UpdateArchive(
      ArchiveName      => 'MyArchiveName',
      Description      => 'MyArchiveDescription',    # OPTIONAL
      EventPattern     => 'MyEventPattern',          # OPTIONAL
      KmsKeyIdentifier => 'MyKmsKeyIdentifier',      # OPTIONAL
      RetentionDays    => 1,                         # OPTIONAL
    );

    # Results:
    my $ArchiveArn   = $UpdateArchiveResponse->ArchiveArn;
    my $CreationTime = $UpdateArchiveResponse->CreationTime;
    my $State        = $UpdateArchiveResponse->State;
    my $StateReason  = $UpdateArchiveResponse->StateReason;

    # Returns a L<Paws::CloudWatchEvents::UpdateArchiveResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveName => Str

The name of the archive to update.



=head2 Description => Str

The description for the archive.



=head2 EventPattern => Str

The event pattern to use to filter events sent to the archive.



=head2 KmsKeyIdentifier => Str

The identifier of the KMS customer managed key for EventBridge to use,
if you choose to use a customer managed key to encrypt this archive.
The identifier can be the key Amazon Resource Name (ARN), KeyId, key
alias, or key alias ARN.

If you do not specify a customer managed key identifier, EventBridge
uses an Amazon Web Services owned key to encrypt the archive.

For more information, see Identify and view keys
(https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html)
in the I<Key Management Service Developer Guide>.

If you have specified that EventBridge use a customer managed key for
encrypting the source event bus, we strongly recommend you also specify
a customer managed key for any archives for the event bus as well.

For more information, see Encrypting archives
(https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html)
in the I<Amazon EventBridge User Guide>.



=head2 RetentionDays => Int

The number of days to retain events in the archive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateArchive in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

