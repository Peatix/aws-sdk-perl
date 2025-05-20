
package Paws::SageMaker::GetLineageGroupPolicyResponse;
  use Moose;
  has LineageGroupArn => (is => 'ro', isa => 'Str');
  has ResourcePolicy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::GetLineageGroupPolicyResponse

=head1 ATTRIBUTES


=head2 LineageGroupArn => Str

The Amazon Resource Name (ARN) of the lineage group.


=head2 ResourcePolicy => Str

The resource policy that gives access to the lineage group in another
account.


=head2 _request_id => Str


=cut

1;