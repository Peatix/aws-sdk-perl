
package Paws::CloudControl::CancelResourceRequestOutput;
  use Moose;
  has ProgressEvent => (is => 'ro', isa => 'Paws::CloudControl::ProgressEvent');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::CancelResourceRequestOutput

=head1 ATTRIBUTES


=head2 ProgressEvent => L<Paws::CloudControl::ProgressEvent>




=head2 _request_id => Str


=cut

1;