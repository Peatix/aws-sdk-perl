
package Paws::Proton::CreateServiceSyncConfig;
  use Moose;
  has Branch => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branch' , required => 1);
  has FilePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filePath' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has RepositoryProvider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryProvider' , required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceSyncConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::CreateServiceSyncConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateServiceSyncConfig - Arguments for method CreateServiceSyncConfig on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceSyncConfig on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method CreateServiceSyncConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceSyncConfig.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $CreateServiceSyncConfigOutput = $proton->CreateServiceSyncConfig(
      Branch             => 'MyGitBranchName',
      FilePath           => 'MyOpsFilePath',
      RepositoryName     => 'MyRepositoryName',
      RepositoryProvider => 'GITHUB',
      ServiceName        => 'MyResourceName',

    );

    # Results:
    my $ServiceSyncConfig = $CreateServiceSyncConfigOutput->ServiceSyncConfig;

    # Returns a L<Paws::Proton::CreateServiceSyncConfigOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/CreateServiceSyncConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Branch => Str

The repository branch for your Proton Ops file.



=head2 B<REQUIRED> FilePath => Str

The path to the Proton Ops file.



=head2 B<REQUIRED> RepositoryName => Str

The repository name.



=head2 B<REQUIRED> RepositoryProvider => Str

The provider type for your repository.

Valid values are: C<"GITHUB">, C<"GITHUB_ENTERPRISE">, C<"BITBUCKET">

=head2 B<REQUIRED> ServiceName => Str

The name of the service the Proton Ops file is for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceSyncConfig in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

