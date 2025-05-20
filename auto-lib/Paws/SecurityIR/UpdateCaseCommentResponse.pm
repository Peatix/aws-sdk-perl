
package Paws::SecurityIR::UpdateCaseCommentResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body');
  has CommentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commentId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::UpdateCaseCommentResponse

=head1 ATTRIBUTES


=head2 Body => Str

Response element for UpdateCaseComment providing the updated comment
content.


=head2 B<REQUIRED> CommentId => Str

Response element for UpdateCaseComment providing the updated comment
ID.


=head2 _request_id => Str


=cut

