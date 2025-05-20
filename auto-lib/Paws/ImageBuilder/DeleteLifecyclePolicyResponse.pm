
package Paws::ImageBuilder::DeleteLifecyclePolicyResponse;
  use Moose;
  has LifecyclePolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecyclePolicyArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DeleteLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 LifecyclePolicyArn => Str

The ARN of the lifecycle policy that was deleted.


=head2 _request_id => Str


=cut

