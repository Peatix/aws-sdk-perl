
package Paws::CloudFormation::CreateStackRefactorOutput;
  use Moose;
  has StackRefactorId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackRefactorOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> StackRefactorId => Str

The ID associated with the stack refactor created from the
CreateStackRefactor action.


=head2 _request_id => Str


=cut

