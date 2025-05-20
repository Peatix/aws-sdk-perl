
package Paws::ControlTower::ListControlOperationsOutput;
  use Moose;
  has ControlOperations => (is => 'ro', isa => 'ArrayRef[Paws::ControlTower::ControlOperationSummary]', traits => ['NameInRequest'], request_name => 'controlOperations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListControlOperationsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ControlOperations => ArrayRef[L<Paws::ControlTower::ControlOperationSummary>]

Returns a list of output from control operations.


=head2 NextToken => Str

A pagination token.


=head2 _request_id => Str


=cut

