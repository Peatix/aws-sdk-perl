
package Paws::Pipes::DescribePipeResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has CurrentState => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DesiredState => (is => 'ro', isa => 'Str');
  has Enrichment => (is => 'ro', isa => 'Str');
  has EnrichmentParameters => (is => 'ro', isa => 'Paws::Pipes::PipeEnrichmentParameters');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has LogConfiguration => (is => 'ro', isa => 'Paws::Pipes::PipeLogConfiguration');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
  has SourceParameters => (is => 'ro', isa => 'Paws::Pipes::PipeSourceParameters');
  has StateReason => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Pipes::TagMap');
  has Target => (is => 'ro', isa => 'Str');
  has TargetParameters => (is => 'ro', isa => 'Paws::Pipes::PipeTargetParameters');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::DescribePipeResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the pipe.


=head2 CreationTime => Str

The time the pipe was created.


=head2 CurrentState => Str

The state the pipe is in.

Valid values are: C<"RUNNING">, C<"STOPPED">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"STARTING">, C<"STOPPING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">, C<"START_FAILED">, C<"STOP_FAILED">, C<"DELETE_FAILED">, C<"CREATE_ROLLBACK_FAILED">, C<"DELETE_ROLLBACK_FAILED">, C<"UPDATE_ROLLBACK_FAILED">
=head2 Description => Str

A description of the pipe.


=head2 DesiredState => Str

The state the pipe should be in.

Valid values are: C<"RUNNING">, C<"STOPPED">, C<"DELETED">
=head2 Enrichment => Str

The ARN of the enrichment resource.


=head2 EnrichmentParameters => L<Paws::Pipes::PipeEnrichmentParameters>

The parameters required to set up enrichment on your pipe.


=head2 KmsKeyIdentifier => Str

The identifier of the KMS customer managed key for EventBridge to use
to encrypt pipe data, if one has been specified.

For more information, see Data encryption in EventBridge
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption.html)
in the I<Amazon EventBridge User Guide>.


=head2 LastModifiedTime => Str

When the pipe was last updated, in ISO-8601 format
(https://www.w3.org/TR/NOTE-datetime) (YYYY-MM-DDThh:mm:ss.sTZD).


=head2 LogConfiguration => L<Paws::Pipes::PipeLogConfiguration>

The logging configuration settings for the pipe.


=head2 Name => Str

The name of the pipe.


=head2 RoleArn => Str

The ARN of the role that allows the pipe to send data to the target.


=head2 Source => Str

The ARN of the source resource.


=head2 SourceParameters => L<Paws::Pipes::PipeSourceParameters>

The parameters required to set up a source for your pipe.


=head2 StateReason => Str

The reason the pipe is in its current state.


=head2 Tags => L<Paws::Pipes::TagMap>

The list of key-value pairs to associate with the pipe.


=head2 Target => Str

The ARN of the target resource.


=head2 TargetParameters => L<Paws::Pipes::PipeTargetParameters>

The parameters required to set up a target for your pipe.

For more information about pipe target parameters, including how to use
dynamic path parameters, see Target parameters
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-target.html)
in the I<Amazon EventBridge User Guide>.


=head2 _request_id => Str


=cut

