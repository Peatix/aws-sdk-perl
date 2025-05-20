
package Paws::QBusiness::SearchRelevantContentResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RelevantContent => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::RelevantContent]', traits => ['NameInRequest'], request_name => 'relevantContent');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::SearchRelevantContentResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next set of results, if there are any.


=head2 RelevantContent => ArrayRef[L<Paws::QBusiness::RelevantContent>]

The list of relevant content items found.


=head2 _request_id => Str


=cut

