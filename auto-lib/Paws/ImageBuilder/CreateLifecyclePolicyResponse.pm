
package Paws::ImageBuilder::CreateLifecyclePolicyResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has LifecyclePolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecyclePolicyArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token that uniquely identifies the request.


=head2 LifecyclePolicyArn => Str

The Amazon Resource Name (ARN) of the lifecycle policy that the request
created.


=head2 _request_id => Str


=cut

