
package Paws::StepFunctions::RedriveExecutionOutput;
  use Moose;
  has RedriveDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'redriveDate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::RedriveExecutionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> RedriveDate => Str

The date the execution was last redriven.


=head2 _request_id => Str


=cut

1;