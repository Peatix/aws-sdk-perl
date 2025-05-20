
package Paws::Kendra::ListExperiencesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::ExperiencesSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListExperiencesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns this token, which
you can use in a later request to retrieve the next set of Amazon
Kendra experiences.


=head2 SummaryItems => ArrayRef[L<Paws::Kendra::ExperiencesSummary>]

An array of summary information for one or more Amazon Kendra
experiences.


=head2 _request_id => Str


=cut

1;