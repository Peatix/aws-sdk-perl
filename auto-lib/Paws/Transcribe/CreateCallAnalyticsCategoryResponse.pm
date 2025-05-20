
package Paws::Transcribe::CreateCallAnalyticsCategoryResponse;
  use Moose;
  has CategoryProperties => (is => 'ro', isa => 'Paws::Transcribe::CategoryProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::CreateCallAnalyticsCategoryResponse

=head1 ATTRIBUTES


=head2 CategoryProperties => L<Paws::Transcribe::CategoryProperties>

Provides you with the properties of your new category, including its
associated rules.


=head2 _request_id => Str


=cut

1;