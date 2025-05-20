
package Paws::Kendra::RetrieveResult;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str');
  has ResultItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::RetrieveResultItem]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::RetrieveResult

=head1 ATTRIBUTES


=head2 QueryId => Str

The identifier of query used for the search. You also use C<QueryId> to
identify the search when using the Submitfeedback
(https://docs.aws.amazon.com/kendra/latest/APIReference/API_SubmitFeedback.html)
API.


=head2 ResultItems => ArrayRef[L<Paws::Kendra::RetrieveResultItem>]

The results of the retrieved relevant passages for the search.


=head2 _request_id => Str


=cut

1;