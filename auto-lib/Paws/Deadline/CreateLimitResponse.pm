
package Paws::Deadline::CreateLimitResponse;
  use Moose;
  has LimitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'limitId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateLimitResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LimitId => Str

A unique identifier for the limit. Use this identifier in other
operations, such as C<CreateQueueLimitAssociation> and C<DeleteLimit>.


=head2 _request_id => Str


=cut

