
package Paws::SecurityIR::CreateCaseCommentResponse;
  use Moose;
  has CommentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commentId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::CreateCaseCommentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommentId => Str

Response element indicating the new comment ID.


=head2 _request_id => Str


=cut

