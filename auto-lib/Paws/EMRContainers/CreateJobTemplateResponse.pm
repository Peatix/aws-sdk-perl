
package Paws::EMRContainers::CreateJobTemplateResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::CreateJobTemplateResponse

=head1 ATTRIBUTES


=head2 Arn => Str

This output display the ARN of the created job template.


=head2 CreatedAt => Str

This output displays the date and time when the job template was
created.


=head2 Id => Str

This output display the created job template ID.


=head2 Name => Str

This output displays the name of the created job template.


=head2 _request_id => Str


=cut

