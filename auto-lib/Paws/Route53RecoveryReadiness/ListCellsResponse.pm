
package Paws::Route53RecoveryReadiness::ListCellsResponse;
  use Moose;
  has Cells => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::CellOutput]', traits => ['NameInRequest'], request_name => 'cells');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::ListCellsResponse

=head1 ATTRIBUTES


=head2 Cells => ArrayRef[L<Paws::Route53RecoveryReadiness::CellOutput>]

A list of cells.


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 _request_id => Str


=cut

