
package Paws::BackupGateway::UpdateHypervisorOutput;
  use Moose;
  has HypervisorArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::UpdateHypervisorOutput

=head1 ATTRIBUTES


=head2 HypervisorArn => Str

The Amazon Resource Name (ARN) of the hypervisor you updated.


=head2 _request_id => Str


=cut

1;