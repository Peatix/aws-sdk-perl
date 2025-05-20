
package Paws::SageMaker::UpdateProjectOutput;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateProjectOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectArn => Str

The Amazon Resource Name (ARN) of the project.


=head2 _request_id => Str


=cut

1;