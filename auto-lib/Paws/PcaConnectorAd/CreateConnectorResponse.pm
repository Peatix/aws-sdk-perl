
package Paws::PcaConnectorAd::CreateConnectorResponse;
  use Moose;
  has ConnectorArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::CreateConnectorResponse

=head1 ATTRIBUTES


=head2 ConnectorArn => Str

If successful, the Amazon Resource Name (ARN) of the connector for
Active Directory.


=head2 _request_id => Str


=cut

