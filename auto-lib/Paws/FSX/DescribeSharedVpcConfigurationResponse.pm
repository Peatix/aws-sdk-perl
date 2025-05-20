
package Paws::FSX::DescribeSharedVpcConfigurationResponse;
  use Moose;
  has EnableFsxRouteTableUpdatesFromParticipantAccounts => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeSharedVpcConfigurationResponse

=head1 ATTRIBUTES


=head2 EnableFsxRouteTableUpdatesFromParticipantAccounts => Str

Indicates whether participant accounts can create FSx for ONTAP
Multi-AZ file systems in shared subnets.


=head2 _request_id => Str


=cut

1;