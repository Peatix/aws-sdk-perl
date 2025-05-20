
package Paws::Route53RecoveryReadiness::GetCellResponse;
  use Moose;
  has CellArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cellArn');
  has CellName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cellName');
  has Cells => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'cells');
  has ParentReadinessScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'parentReadinessScopes');
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryReadiness::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::GetCellResponse

=head1 ATTRIBUTES


=head2 CellArn => Str

The Amazon Resource Name (ARN) for the cell.


=head2 CellName => Str

The name of the cell.


=head2 Cells => ArrayRef[Str|Undef]

A list of cell ARNs.


=head2 ParentReadinessScopes => ArrayRef[Str|Undef]

The readiness scope for the cell, which can be a cell Amazon Resource
Name (ARN) or a recovery group ARN. This is a list but currently can
have only one element.


=head2 Tags => L<Paws::Route53RecoveryReadiness::Tags>

Tags on the resources.


=head2 _request_id => Str


=cut

