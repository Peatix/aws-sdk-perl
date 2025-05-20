
package Paws::Transcribe::UpdateCallAnalyticsCategoryResponse;
  use Moose;
  has CategoryProperties => (is => 'ro', isa => 'Paws::Transcribe::CategoryProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::UpdateCallAnalyticsCategoryResponse

=head1 ATTRIBUTES


=head2 CategoryProperties => L<Paws::Transcribe::CategoryProperties>

Provides you with the properties of the Call Analytics category you
specified in your C<UpdateCallAnalyticsCategory> request.


=head2 _request_id => Str


=cut

1;