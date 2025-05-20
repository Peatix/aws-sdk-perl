
package Paws::OpenSearchServerless::BatchGetEffectiveLifecyclePolicyResponse;
  use Moose;
  has EffectiveLifecyclePolicyDetails => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::EffectiveLifecyclePolicyDetail]', traits => ['NameInRequest'], request_name => 'effectiveLifecyclePolicyDetails' );
  has EffectiveLifecyclePolicyErrorDetails => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::EffectiveLifecyclePolicyErrorDetail]', traits => ['NameInRequest'], request_name => 'effectiveLifecyclePolicyErrorDetails' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::BatchGetEffectiveLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 EffectiveLifecyclePolicyDetails => ArrayRef[L<Paws::OpenSearchServerless::EffectiveLifecyclePolicyDetail>]

A list of lifecycle policies applied to the OpenSearch Serverless
indexes.


=head2 EffectiveLifecyclePolicyErrorDetails => ArrayRef[L<Paws::OpenSearchServerless::EffectiveLifecyclePolicyErrorDetail>]

A list of resources for which retrieval failed.


=head2 _request_id => Str


=cut

1;