
package Paws::Proton::UpdateTemplateSyncConfig;
  use Moose;
  has Branch => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branch' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has RepositoryProvider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryProvider' , required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subdirectory' );
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName' , required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTemplateSyncConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::UpdateTemplateSyncConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateTemplateSyncConfig - Arguments for method UpdateTemplateSyncConfig on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTemplateSyncConfig on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method UpdateTemplateSyncConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTemplateSyncConfig.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $UpdateTemplateSyncConfigOutput = $proton->UpdateTemplateSyncConfig(
      Branch             => 'MyGitBranchName',
      RepositoryName     => 'MyRepositoryName',
      RepositoryProvider => 'GITHUB',
      TemplateName       => 'MyResourceName',
      TemplateType       => 'ENVIRONMENT',
      Subdirectory       => 'MySubdirectory',     # OPTIONAL
    );

    # Results:
    my $TemplateSyncConfig =
      $UpdateTemplateSyncConfigOutput->TemplateSyncConfig;

    # Returns a L<Paws::Proton::UpdateTemplateSyncConfigOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/UpdateTemplateSyncConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Branch => Str

The repository branch for your template.



=head2 B<REQUIRED> RepositoryName => Str

The repository name (for example, C<myrepos/myrepo>).



=head2 B<REQUIRED> RepositoryProvider => Str

The repository provider.

Valid values are: C<"GITHUB">, C<"GITHUB_ENTERPRISE">, C<"BITBUCKET">

=head2 Subdirectory => Str

A subdirectory path to your template bundle version. When included,
limits the template bundle search to this repository directory.



=head2 B<REQUIRED> TemplateName => Str

The synced template name.



=head2 B<REQUIRED> TemplateType => Str

The synced template type.

Valid values are: C<"ENVIRONMENT">, C<"SERVICE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTemplateSyncConfig in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

