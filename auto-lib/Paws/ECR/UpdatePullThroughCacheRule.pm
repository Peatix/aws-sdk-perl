
package Paws::ECR::UpdatePullThroughCacheRule;
  use Moose;
  has CredentialArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentialArn' );
  has CustomRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customRoleArn' );
  has EcrRepositoryPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ecrRepositoryPrefix' , required => 1);
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePullThroughCacheRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::UpdatePullThroughCacheRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::UpdatePullThroughCacheRule - Arguments for method UpdatePullThroughCacheRule on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePullThroughCacheRule on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method UpdatePullThroughCacheRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePullThroughCacheRule.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $UpdatePullThroughCacheRuleResponse =
      $api . ecr->UpdatePullThroughCacheRule(
      EcrRepositoryPrefix => 'MyPullThroughCacheRuleRepositoryPrefix',
      CredentialArn       => 'MyCredentialArn',                       # OPTIONAL
      CustomRoleArn       => 'MyCustomRoleArn',                       # OPTIONAL
      RegistryId          => 'MyRegistryId',                          # OPTIONAL
      );

    # Results:
    my $CredentialArn = $UpdatePullThroughCacheRuleResponse->CredentialArn;
    my $CustomRoleArn = $UpdatePullThroughCacheRuleResponse->CustomRoleArn;
    my $EcrRepositoryPrefix =
      $UpdatePullThroughCacheRuleResponse->EcrRepositoryPrefix;
    my $RegistryId = $UpdatePullThroughCacheRuleResponse->RegistryId;
    my $UpdatedAt  = $UpdatePullThroughCacheRuleResponse->UpdatedAt;
    my $UpstreamRepositoryPrefix =
      $UpdatePullThroughCacheRuleResponse->UpstreamRepositoryPrefix;

    # Returns a L<Paws::ECR::UpdatePullThroughCacheRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/UpdatePullThroughCacheRule>

=head1 ATTRIBUTES


=head2 CredentialArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services Secrets
Manager secret that identifies the credentials to authenticate to the
upstream registry.



=head2 CustomRoleArn => Str

Amazon Resource Name (ARN) of the IAM role to be assumed by Amazon ECR
to authenticate to the ECR upstream registry. This role must be in the
same account as the registry that you are configuring.



=head2 B<REQUIRED> EcrRepositoryPrefix => Str

The repository name prefix to use when caching images from the source
registry.



=head2 RegistryId => Str

The Amazon Web Services account ID associated with the registry
associated with the pull through cache rule. If you do not specify a
registry, the default registry is assumed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePullThroughCacheRule in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

