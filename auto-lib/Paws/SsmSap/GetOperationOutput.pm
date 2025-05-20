
package Paws::SsmSap::GetOperationOutput;
  use Moose;
  has Operation => (is => 'ro', isa => 'Paws::SsmSap::Operation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::GetOperationOutput

=head1 ATTRIBUTES


=head2 Operation => L<Paws::SsmSap::Operation>

Returns the details of an operation.


=head2 _request_id => Str


=cut

