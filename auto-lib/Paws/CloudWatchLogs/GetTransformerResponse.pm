
package Paws::CloudWatchLogs::GetTransformerResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'creationTime' );
  has LastModifiedTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastModifiedTime' );
  has LogGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupIdentifier' );
  has TransformerConfig => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::Processor]', traits => ['NameInRequest'], request_name => 'transformerConfig' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetTransformerResponse

=head1 ATTRIBUTES


=head2 CreationTime => Int

The creation time of the transformer, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC.


=head2 LastModifiedTime => Int

The date and time when this transformer was most recently modified,
expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.


=head2 LogGroupIdentifier => Str

The ARN of the log group that you specified in your request.


=head2 TransformerConfig => ArrayRef[L<Paws::CloudWatchLogs::Processor>]

This sructure contains the configuration of the requested transformer.


=head2 _request_id => Str


=cut

1;