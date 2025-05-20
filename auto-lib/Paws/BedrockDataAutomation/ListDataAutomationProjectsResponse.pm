
package Paws::BedrockDataAutomation::ListDataAutomationProjectsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Projects => (is => 'ro', isa => 'ArrayRef[Paws::BedrockDataAutomation::DataAutomationProjectSummary]', traits => ['NameInRequest'], request_name => 'projects', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::ListDataAutomationProjectsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 B<REQUIRED> Projects => ArrayRef[L<Paws::BedrockDataAutomation::DataAutomationProjectSummary>]




=head2 _request_id => Str


=cut

