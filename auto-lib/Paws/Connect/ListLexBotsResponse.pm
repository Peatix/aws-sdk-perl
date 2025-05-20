
package Paws::Connect::ListLexBotsResponse;
  use Moose;
  has LexBots => (is => 'ro', isa => 'ArrayRef[Paws::Connect::LexBot]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListLexBotsResponse

=head1 ATTRIBUTES


=head2 LexBots => ArrayRef[L<Paws::Connect::LexBot>]

The names and Amazon Web Services Regions of the Amazon Lex bots
associated with the specified instance.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

