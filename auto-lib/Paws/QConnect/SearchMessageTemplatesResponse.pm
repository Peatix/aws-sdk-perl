
package Paws::QConnect::SearchMessageTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::MessageTemplateSearchResultData]', traits => ['NameInRequest'], request_name => 'results', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::SearchMessageTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::QConnect::MessageTemplateSearchResultData>]

The results of the message template search.


=head2 _request_id => Str


=cut

