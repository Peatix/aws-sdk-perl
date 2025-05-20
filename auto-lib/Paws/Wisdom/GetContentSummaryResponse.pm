
package Paws::Wisdom::GetContentSummaryResponse;
  use Moose;
  has ContentSummary => (is => 'ro', isa => 'Paws::Wisdom::ContentSummary', traits => ['NameInRequest'], request_name => 'contentSummary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::GetContentSummaryResponse

=head1 ATTRIBUTES


=head2 ContentSummary => L<Paws::Wisdom::ContentSummary>

The content summary.


=head2 _request_id => Str


=cut

