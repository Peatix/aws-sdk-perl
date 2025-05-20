
package Paws::QBusiness::ListWebExperiencesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WebExperiences => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::WebExperience]', traits => ['NameInRequest'], request_name => 'webExperiences');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListWebExperiencesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token,
which you can use in a later request to list the next set of messages.


=head2 WebExperiences => ArrayRef[L<Paws::QBusiness::WebExperience>]

An array of summary information for one or more Amazon Q Business
experiences.


=head2 _request_id => Str


=cut

