
package Paws::ImageBuilder::UpdateLifecyclePolicyResponse;
  use Moose;
  has LifecyclePolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecyclePolicyArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::UpdateLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 LifecyclePolicyArn => Str

The ARN of the image lifecycle policy resource that was updated.


=head2 _request_id => Str


=cut

