
package Paws::ECR::DeletePullThroughCacheRuleResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt' );
  has CredentialArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentialArn' );
  has CustomRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customRoleArn' );
  has EcrRepositoryPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ecrRepositoryPrefix' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has UpstreamRegistryUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'upstreamRegistryUrl' );
  has UpstreamRepositoryPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'upstreamRepositoryPrefix' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DeletePullThroughCacheRuleResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp associated with the pull through cache rule.


=head2 CredentialArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services Secrets
Manager secret associated with the pull through cache rule.


=head2 CustomRoleArn => Str

The ARN of the IAM role associated with the pull through cache rule.


=head2 EcrRepositoryPrefix => Str

The Amazon ECR repository prefix associated with the request.


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