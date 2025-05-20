
package Paws::EMRContainers::ListJobTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Templates => (is => 'ro', isa => 'ArrayRef[Paws::EMRContainers::JobTemplate]', traits => ['NameInRequest'], request_name => 'templates');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::ListJobTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

This output displays the token for the next set of job templates.


=head2 Templates => ArrayRef[L<Paws::EMRContainers::JobTemplate>]

This output lists information about the specified job templates.


=head2 _request_id => Str


=cut

