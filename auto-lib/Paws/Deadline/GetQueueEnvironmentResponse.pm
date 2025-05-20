
package Paws::Deadline::GetQueueEnvironmentResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority', required => 1);
  has QueueEnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queueEnvironmentId', required => 1);
  has Template => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'template', required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateType', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetQueueEnvironmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The date and time the resource was created.


=head2 B<REQUIRED> CreatedBy => Str

The user or system that created this resource.E<gt>


=head2 B<REQUIRED> Name => Str

The name of the queue environment.


=head2 B<REQUIRED> Priority => Int

The priority of the queue environment.


=head2 B<REQUIRED> QueueEnvironmentId => Str

The queue environment ID.


=head2 B<REQUIRED> Template => Str

The template for the queue environment.


=head2 B<REQUIRED> TemplateType => Str

The type of template for the queue environment.

Valid values are: C<"JSON">, C<"YAML">
=head2 UpdatedAt => Str

The date and time the resource was updated.


=head2 UpdatedBy => Str

The user or system that updated this resource.


=head2 _request_id => Str


=cut

