
package Paws::SsmSap::StopApplicationOutput;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::StopApplicationOutput

=head1 ATTRIBUTES


=head2 OperationId => Str

The ID of the operation.


=head2 _request_id => Str


=cut

