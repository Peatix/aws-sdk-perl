
package Paws::BedrockDataAutomation::GetBlueprintResponse;
  use Moose;
  has Blueprint => (is => 'ro', isa => 'Paws::BedrockDataAutomation::Blueprint', traits => ['NameInRequest'], request_name => 'blueprint', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::GetBlueprintResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Blueprint => L<Paws::BedrockDataAutomation::Blueprint>




=head2 _request_id => Str


=cut

