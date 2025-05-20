
package Paws::BedrockDataAutomation::GetDataAutomationProjectResponse;
  use Moose;
  has Project => (is => 'ro', isa => 'Paws::BedrockDataAutomation::DataAutomationProject', traits => ['NameInRequest'], request_name => 'project', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::GetDataAutomationProjectResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Project => L<Paws::BedrockDataAutomation::DataAutomationProject>




=head2 _request_id => Str


=cut

