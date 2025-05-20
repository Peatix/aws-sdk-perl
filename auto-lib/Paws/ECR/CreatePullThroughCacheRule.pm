
package Paws::ECR::CreatePullThroughCacheRule;
  use Moose;
  has CredentialArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentialArn' );
  has CustomRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customRoleArn' );
  has EcrRepositoryPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ecrRepositoryPrefix' , required => 1);
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has UpstreamRegistry => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'upstreamRegistry' );
  has UpstreamRegistryUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'upstreamRegistryUrl' , required => 1);
  has UpstreamRepositoryPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'upstreamRepositoryPrefix' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePullThroughCacheRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::CreatePullThroughCacheRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::CreatePullThroughCacheRule - Arguments for method CreatePullThroughCacheRule on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePullThroughCacheRule on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method CreatePullThroughCacheRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePullThroughCacheRule.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $CreatePullThroughCacheRuleResponse =
      $api . ecr->CreatePullThroughCacheRule(
      EcrRepositoryPrefix => 'MyPullThroughCacheRuleRepositoryPrefix',
      UpstreamRegistryUrl => 'MyUrl',
      CredentialArn       => 'MyCredentialArn',                       # OPTIONAL
      CustomRoleArn       => 'MyCustomRoleArn',                       # OPTIONAL
      RegistryId          => 'MyRegistryId',                          # OPTIONAL
      UpstreamRegistry    => 'ecr',                                   # OPTIONAL
      UpstreamRepositoryPrefix =>
        'MyPullThroughCacheRuleRepositoryPrefix',                     # OPTIONAL
      );

    # Results:
    my $CreatedAt     = $CreatePullThroughCacheRuleResponse->CreatedAt;
    my $CredentialArn = $CreatePullThroughCacheRuleResponse->CredentialArn;
    my $CustomRoleArn = $CreatePullThroughCacheRuleResponse->CustomRoleArn;
    my $EcrRepositoryPrefix =
      $CreatePullThroughCacheRuleResponse->EcrRepositoryPrefix;
    my $RegistryId = $CreatePullThroughCacheRuleResponse->RegistryId;
    my $UpstreamRegistry =
      $CreatePullThroughCacheRuleResponse->UpstreamRegistry;
    my $UpstreamRegistryUrl =
      $CreatePullThroughCacheRuleResponse->UpstreamRegistryUrl;
    my $UpstreamRepositoryPrefix =
      $CreatePullThroughCacheRuleResponse->UpstreamRepositoryPrefix;

    # Returns a L<Paws::ECR::CreatePullThroughCacheRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/CreatePullThroughCacheRule>

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

There is always an assumed C</> applied to the end of the prefix. If
you specify C<ecr-public> as the prefix, Amazon ECR treats that as
C<ecr-public/>.



=head2 RegistryId => Str

The Amazon Web Services account ID associated with the registry to
create the pull through cache rule for. If you do not specify a
registry, the default registry is assumed.



=head2 UpstreamRegistry => Str

The name of the upstream registry.

Valid values are: C<"ecr">, C<"ecr-public">, C<"quay">, C<"k8s">, C<"docker-hub">, C<"github-container-registry">, C<"azure-container-registry">, C<"gitlab-container-registry">

=head2 B<REQUIRED> UpstreamRegistryUrl => Str

The registry URL of the upstream public registry to use as the source
for the pull through cache rule. The following is the syntax to use for
each supported upstream registry.

=over

=item *

Amazon ECR (C<ecr>) E<ndash> C<dkr.ecr.E<lt>regionE<gt>.amazonaws.com>

=item *

Amazon ECR Public (C<ecr-public>) E<ndash> C<public.ecr.aws>

=item *

Docker Hub (C<docker-hub>) E<ndash> C<registry-1.docker.io>

=item *

GitHub Container Registry (C<github-container-registry>) E<ndash>
C<ghcr.io>

=item *

GitLab Container Registry (C<gitlab-container-registry>) E<ndash>
C<registry.gitlab.com>

=item *

Kubernetes (C<k8s>) E<ndash> C<registry.k8s.io>

=item *

Microsoft Azure Container Registry (C<azure-container-registry>)
E<ndash> C<E<lt>customE<gt>.azurecr.io>

=item *

Quay (C<quay>) E<ndash> C<quay.io>

=back




=head2 UpstreamRepositoryPrefix => Str

The repository name prefix of the upstream registry to match with the
upstream repository name. When this field isn't specified, Amazon ECR
will use the C<ROOT>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePullThroughCacheRule in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

