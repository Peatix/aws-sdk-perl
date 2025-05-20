
package Paws::ECR::UpdatePullThroughCacheRuleResponse;
  use Moose;
  has CredentialArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentialArn' );
  has CustomRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customRoleArn' );
  has EcrRepositoryPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ecrRepositoryPrefix' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt' );
  has UpstreamRepositoryPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'upstreamRepositoryPrefix' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::UpdatePullThroughCacheRuleResponse

=head1 ATTRIBUTES


=head2 CredentialArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services Secrets
Manager secret associated with the pull through cache rule.


=head2 CustomRoleArn => Str

The ARN of the IAM role associated with the pull through cache rule.


=head2 EcrRepositoryPrefix => Str

The Amazon ECR repository prefix associated with the pull through cache
rule.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 UpdatedAt => Str

The date and time, in JavaScript date format, when the pull through
cache rule was updated.


=head2 UpstreamRepositoryPrefix => Str

The upstream repository prefix associated with the pull through cache
rule.


=head2 _request_id => Str


=cut

1;