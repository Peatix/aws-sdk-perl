
package Paws::SESv2::GetMessageInsightsResponse;
  use Moose;
  has EmailTags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::MessageTag]');
  has FromEmailAddress => (is => 'ro', isa => 'Str');
  has Insights => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::EmailInsights]');
  has MessageId => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetMessageInsightsResponse

=head1 ATTRIBUTES


=head2 EmailTags => ArrayRef[L<Paws::SESv2::MessageTag>]

A list of tags, in the form of name/value pairs, that were applied to
the email you sent, along with Amazon SES Auto-Tags
(https://docs.aws.amazon.com/ses/latest/dg/monitor-using-event-publishing.html).


=head2 FromEmailAddress => Str

The from address used to send the message.


=head2 Insights => ArrayRef[L<Paws::SESv2::EmailInsights>]

A set of insights associated with the message.


=head2 MessageId => Str

A unique identifier for the message.


=head2 Subject => Str

The subject line of the message.


=head2 _request_id => Str


=cut

