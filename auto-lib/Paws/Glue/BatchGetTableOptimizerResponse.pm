
package Paws::Glue::BatchGetTableOptimizerResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::Glue::BatchGetTableOptimizerError]');
  has TableOptimizers => (is => 'ro', isa => 'ArrayRef[Paws::Glue::BatchTableOptimizer]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetTableOptimizerResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::Glue::BatchGetTableOptimizerError>]

A list of errors from the operation.


=head2 TableOptimizers => ArrayRef[L<Paws::Glue::BatchTableOptimizer>]

A list of C<BatchTableOptimizer> objects.


=head2 _request_id => Str


=cut

1;