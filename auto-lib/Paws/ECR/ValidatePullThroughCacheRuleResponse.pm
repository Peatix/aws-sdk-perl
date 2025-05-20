
package Paws::ECR::ValidatePullThroughCacheRuleResponse;
  use Moose;
  has CredentialArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentialArn' );
  has CustomRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customRoleArn' );
  has EcrRepositoryPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ecrRepositoryPrefix' );
  has Failure => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failure' );
  has IsValid => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isValid' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has UpstreamRegistryUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'upstreamRegistryUrl' );
  has UpstreamRepositoryPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'upstreamRepositoryPrefix' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ValidatePullThroughCacheRuleResponse

=head1 ATTRIBUTES


=head2 CredentialArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services Secrets
Manager secret associated with the pull through cache rule.


=head2 CustomRoleArn => Str

The ARN of the IAM role associated with the pull through cache rule.


=head2 EcrRepositoryPrefix => Str

The Amazon ECR repository prefix associated with the pull through cache
rule.


=head2 Failure => Str

The reason the validation failed. For more details about possible
causes and how to address them, see Using pull through cache rules
(https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache.html)
in the I<Amazon Elastic Container Registry User Guide>.


=head2 IsValid => Bool

Whether or not the pull through cache rule was validated. If C<true>,
Amazon ECR was able to reach the upstream registry and authentication
was successful. If C<false>, there was an issue and validation failed.
The C<failure> reason indicates the cause.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 UpstreamRegistryUrl => Str

The upstream registry URL associated with the pull through cache rule.


=head2 UpstreamRepositoryPrefix => Str

The upstream repository prefix associated with the pull through cache
rule.


=head2 _request_id => Str


=cut

1;