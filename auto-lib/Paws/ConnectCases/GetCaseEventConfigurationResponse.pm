
package Paws::ConnectCases::GetCaseEventConfigurationResponse;
  use Moose;
  has EventBridge => (is => 'ro', isa => 'Paws::ConnectCases::EventBridgeConfiguration', traits => ['NameInRequest'], request_name => 'eventBridge', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::GetCaseEventConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventBridge => L<Paws::ConnectCases::EventBridgeConfiguration>

Configuration to enable EventBridge case event delivery and determine
what data is delivered.


=head2 _request_id => Str


=cut

