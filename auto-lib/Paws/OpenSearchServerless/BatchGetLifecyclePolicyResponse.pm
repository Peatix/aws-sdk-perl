
package Paws::OpenSearchServerless::BatchGetLifecyclePolicyResponse;
  use Moose;
  has LifecyclePolicyDetails => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::LifecyclePolicyDetail]', traits => ['NameInRequest'], request_name => 'lifecyclePolicyDetails' );
  has LifecyclePolicyErrorDetails => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::LifecyclePolicyErrorDetail]', traits => ['NameInRequest'], request_name => 'lifecyclePolicyErrorDetails' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::BatchGetLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 LifecyclePolicyDetails => ArrayRef[L<Paws::OpenSearchServerless::LifecyclePolicyDetail>]

A list of lifecycle policies matched to the input policy name and
policy type.


=head2 LifecyclePolicyErrorDetails => ArrayRef[L<Paws::OpenSearchServerless::LifecyclePolicyErrorDetail>]

A list of lifecycle policy names and policy types for which retrieval
failed.


=head2 _request_id => Str


=cut

1;