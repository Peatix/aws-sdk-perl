
package Paws::ImageBuilder::GetLifecyclePolicyResponse;
  use Moose;
  has LifecyclePolicy => (is => 'ro', isa => 'Paws::ImageBuilder::LifecyclePolicy', traits => ['NameInRequest'], request_name => 'lifecyclePolicy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 LifecyclePolicy => L<Paws::ImageBuilder::LifecyclePolicy>

The ARN of the image lifecycle policy resource that was returned.


=head2 _request_id => Str


=cut

