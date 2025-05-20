
package Paws::BedrockDataAutomation::ListBlueprintsResponse;
  use Moose;
  has Blueprints => (is => 'ro', isa => 'ArrayRef[Paws::BedrockDataAutomation::BlueprintSummary]', traits => ['NameInRequest'], request_name => 'blueprints', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::ListBlueprintsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Blueprints => ArrayRef[L<Paws::BedrockDataAutomation::BlueprintSummary>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

