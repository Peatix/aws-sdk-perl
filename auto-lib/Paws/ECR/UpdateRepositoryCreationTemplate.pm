
package Paws::ECR::UpdateRepositoryCreationTemplate;
  use Moose;
  has AppliedFor => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'appliedFor' );
  has CustomRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customRoleArn' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::ECR::EncryptionConfigurationForRepositoryCreationTemplate', traits => ['NameInRequest'], request_name => 'encryptionConfiguration' );
  has ImageTagMutability => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageTagMutability' );
  has LifecyclePolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecyclePolicy' );
  has Prefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'prefix' , required => 1);
  has RepositoryPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryPolicy' );
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::ECR::Tag]', traits => ['NameInRequest'], request_name => 'resourceTags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRepositoryCreationTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::UpdateRepositoryCreationTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::UpdateRepositoryCreationTemplate - Arguments for method UpdateRepositoryCreationTemplate on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRepositoryCreationTemplate on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method UpdateRepositoryCreationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRepositoryCreationTemplate.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $UpdateRepositoryCreationTemplateResponse =
      $api . ecr->UpdateRepositoryCreationTemplate(
      Prefix     => 'MyPrefix',
      AppliedFor => [
        'REPLICATION', ...    # values: REPLICATION, PULL_THROUGH_CACHE
      ],    # OPTIONAL
      CustomRoleArn           => 'MyCustomRoleArn',                   # OPTIONAL
      Description             => 'MyRepositoryTemplateDescription',   # OPTIONAL
      EncryptionConfiguration => {
        EncryptionType => 'AES256',    # values: AES256, KMS, KMS_DSSE
        KmsKey => 'MyKmsKeyForRepositoryCreationTemplate', # max: 2048; OPTIONAL
      },    # OPTIONAL
      ImageTagMutability => 'MUTABLE',                           # OPTIONAL
      LifecyclePolicy    =>
        'MyLifecyclePolicyTextForRepositoryCreationTemplate',    # OPTIONAL
      RepositoryPolicy => 'MyRepositoryPolicyText',              # OPTIONAL
      ResourceTags     => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],                                                         # OPTIONAL
      );

    # Results:
    my $RegistryId = $UpdateRepositoryCreationTemplateResponse->RegistryId;
    my $RepositoryCreationTemplate =
      $UpdateRepositoryCreationTemplateResponse->RepositoryCreationTemplate;

    # Returns a L<Paws::ECR::UpdateRepositoryCreationTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/UpdateRepositoryCreationTemplate>

=head1 ATTRIBUTES


=head2 AppliedFor => ArrayRef[Str|Undef]

Updates the list of enumerable strings representing the Amazon ECR
repository creation scenarios that this template will apply towards.
The two supported scenarios are C<PULL_THROUGH_CACHE> and
C<REPLICATION>



=head2 CustomRoleArn => Str

The ARN of the role to be assumed by Amazon ECR. This role must be in
the same account as the registry that you are configuring. Amazon ECR
will assume your supplied role when the customRoleArn is specified.
When this field isn't specified, Amazon ECR will use the service-linked
role for the repository creation template.



=head2 Description => Str

A description for the repository creation template.



=head2 EncryptionConfiguration => L<Paws::ECR::EncryptionConfigurationForRepositoryCreationTemplate>





=head2 ImageTagMutability => Str

Updates the tag mutability setting for the repository. If this
parameter is omitted, the default setting of C<MUTABLE> will be used
which will allow image tags to be overwritten. If C<IMMUTABLE> is
specified, all image tags within the repository will be immutable which
will prevent them from being overwritten.

Valid values are: C<"MUTABLE">, C<"IMMUTABLE">

=head2 LifecyclePolicy => Str

Updates the lifecycle policy associated with the specified repository
creation template.



=head2 B<REQUIRED> Prefix => Str

The repository namespace prefix that matches an existing repository
creation template in the registry. All repositories created using this
namespace prefix will have the settings defined in this template
applied. For example, a prefix of C<prod> would apply to all
repositories beginning with C<prod/>. This includes a repository named
C<prod/team1> as well as a repository named C<prod/repository1>.

To apply a template to all repositories in your registry that don't
have an associated creation template, you can use C<ROOT> as the
prefix.



=head2 RepositoryPolicy => Str

Updates the repository policy created using the template. A repository
policy is a permissions policy associated with a repository to control
access permissions.



=head2 ResourceTags => ArrayRef[L<Paws::ECR::Tag>]

The metadata to apply to the repository to help you categorize and
organize. Each tag consists of a key and an optional value, both of
which you define. Tag keys can have a maximum character length of 128
characters, and tag values can have a maximum length of 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRepositoryCreationTemplate in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

