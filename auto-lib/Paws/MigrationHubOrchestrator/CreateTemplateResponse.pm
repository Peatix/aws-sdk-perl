
package Paws::MigrationHubOrchestrator::CreateTemplateResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::StringMap', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateArn');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::CreateTemplateResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MigrationHubOrchestrator::StringMap>

The tags added to the migration workflow template.


=head2 TemplateArn => Str

The Amazon Resource Name (ARN) of the migration workflow template. The
format for an Migration Hub Orchestrator template ARN is
C<arn:aws:migrationhub-orchestrator:region:account:template/template-abcd1234>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
in the I<AWS General Reference>.


=head2 TemplateId => Str

The ID of the migration workflow template.


=head2 _request_id => Str


=cut

