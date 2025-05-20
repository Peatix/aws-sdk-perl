
package Paws::Appflow::CancelFlowExecutionsResponse;
  use Moose;
  has InvalidExecutions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'invalidExecutions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::CancelFlowExecutionsResponse

=head1 ATTRIBUTES


=head2 InvalidExecutions => ArrayRef[Str|Undef]

The IDs of runs that Amazon AppFlow couldn't cancel. These runs might
be ineligible for canceling because they haven't started yet or have
already completed.


=head2 _request_id => Str


=cut

