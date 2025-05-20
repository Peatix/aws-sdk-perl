
package Paws::BedrockDataAutomation::CreateDataAutomationProjectResponse;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn', required => 1);
  has ProjectStage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectStage');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::CreateDataAutomationProjectResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectArn => Str




=head2 ProjectStage => Str



Valid values are: C<"DEVELOPMENT">, C<"LIVE">
=head2 Status => Str



Valid values are: C<"COMPLETED">, C<"IN_PROGRESS">, C<"FAILED">
=head2 _request_id => Str


=cut

