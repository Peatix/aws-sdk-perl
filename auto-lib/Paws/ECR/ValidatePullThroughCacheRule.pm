
package Paws::ECR::ValidatePullThroughCacheRule;
  use Moose;
  has EcrRepositoryPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ecrRepositoryPrefix' , required => 1);
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidatePullThroughCacheRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::ValidatePullThroughCacheRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ValidatePullThroughCacheRule - Arguments for method ValidatePullThroughCacheRule on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidatePullThroughCacheRule on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method ValidatePullThroughCacheRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidatePullThroughCacheRule.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $ValidatePullThroughCacheRuleResponse =
      $api . ecr->ValidatePullThroughCacheRule(
      EcrRepositoryPrefix => 'MyPullThroughCacheRuleRepositoryPrefix',
      RegistryId          => 'MyRegistryId',                          # OPTIONAL
      );

    # Results:
    my $CredentialArn = $ValidatePullThroughCacheRuleResponse->CredentialArn;
    my $CustomRoleArn = $ValidatePullThroughCacheRuleResponse->CustomRoleArn;
    my $EcrRepositoryPrefix =
      $ValidatePullThroughCacheRuleResponse->EcrRepositoryPrefix;
    my $Failure    = $ValidatePullThroughCacheRuleResponse->Failure;
    my $IsValid    = $ValidatePullThroughCacheRuleResponse->IsValid;
    my $RegistryId = $ValidatePullThroughCacheRuleResponse->RegistryId;
    my $UpstreamRegistryUrl =
      $ValidatePullThroughCacheRuleResponse->UpstreamRegistryUrl;
    my $UpstreamRepositoryPrefix =
      $ValidatePullThroughCacheRuleResponse->UpstreamRepositoryPrefix;

    # Returns a L<Paws::ECR::ValidatePullThroughCacheRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/ValidatePullThroughCacheRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EcrRepositoryPrefix => Str

The repository name prefix associated with the pull through cache rule.



=head2 RegistryId => Str

The registry ID associated with the pull through cache rule. If you do
not specify a registry, the default registry is assumed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidatePullThroughCacheRule in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

