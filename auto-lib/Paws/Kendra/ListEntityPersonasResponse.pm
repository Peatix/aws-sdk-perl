
package Paws::Kendra::ListEntityPersonasResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::PersonasSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListEntityPersonasResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns this token, which
you can use in a later request to retrieve the next set of users or
groups.


=head2 SummaryItems => ArrayRef[L<Paws::Kendra::PersonasSummary>]

An array of summary information for one or more users or groups.


=head2 _request_id => Str


=cut

1;