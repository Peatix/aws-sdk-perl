
package Paws::BedrockDataAutomation::DeleteDataAutomationProjectResponse;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::DeleteDataAutomationProjectResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectArn => Str




=head2 Status => Str



Valid values are: C<"COMPLETED">, C<"IN_PROGRESS">, C<"FAILED">
=head2 _request_id => Str


=cut

