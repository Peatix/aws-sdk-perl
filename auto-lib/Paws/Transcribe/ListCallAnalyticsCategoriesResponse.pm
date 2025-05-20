
package Paws::Transcribe::ListCallAnalyticsCategoriesResponse;
  use Moose;
  has Categories => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::CategoryProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListCallAnalyticsCategoriesResponse

=head1 ATTRIBUTES


=head2 Categories => ArrayRef[L<Paws::Transcribe::CategoryProperties>]

Provides detailed information about your Call Analytics categories,
including all the rules associated with each category.


=head2 NextToken => Str

If C<NextToken> is present in your response, it indicates that not all
results are displayed. To view the next set of results, copy the string
associated with the C<NextToken> parameter in your results output, then
run your request again including C<NextToken> with the value of the
copied string. Repeat as needed to view all your results.


=head2 _request_id => Str


=cut

1;