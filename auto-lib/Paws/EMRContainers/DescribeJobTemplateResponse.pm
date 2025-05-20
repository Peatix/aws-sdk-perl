
package Paws::EMRContainers::DescribeJobTemplateResponse;
  use Moose;
  has JobTemplate => (is => 'ro', isa => 'Paws::EMRContainers::JobTemplate', traits => ['NameInRequest'], request_name => 'jobTemplate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DescribeJobTemplateResponse

=head1 ATTRIBUTES


=head2 JobTemplate => L<Paws::EMRContainers::JobTemplate>

This output displays information about the specified job template.


=head2 _request_id => Str


=cut

