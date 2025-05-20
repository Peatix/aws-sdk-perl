
package Paws::OSIS::GetPipelineChangeProgressResponse;
  use Moose;
  has ChangeProgressStatuses => (is => 'ro', isa => 'ArrayRef[Paws::OSIS::ChangeProgressStatus]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::GetPipelineChangeProgressResponse

=head1 ATTRIBUTES


=head2 ChangeProgressStatuses => ArrayRef[L<Paws::OSIS::ChangeProgressStatus>]

The current status of the change happening on the pipeline.


=head2 _request_id => Str


=cut

