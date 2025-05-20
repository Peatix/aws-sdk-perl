
package Paws::SsmSap::RegisterApplicationOutput;
  use Moose;
  has Application => (is => 'ro', isa => 'Paws::SsmSap::Application');
  has OperationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::RegisterApplicationOutput

=head1 ATTRIBUTES


=head2 Application => L<Paws::SsmSap::Application>

The application registered with AWS Systems Manager for SAP.


=head2 OperationId => Str

The ID of the operation.


=head2 _request_id => Str


=cut

