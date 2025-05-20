
package Paws::CodeCatalyst::CreateDevEnvironment;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alias');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Ides => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::IdeConfiguration]', traits => ['NameInRequest'], request_name => 'ides');
  has InactivityTimeoutMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'inactivityTimeoutMinutes');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType', required => 1);
  has PersistentStorage => (is => 'ro', isa => 'Paws::CodeCatalyst::PersistentStorageConfiguration', traits => ['NameInRequest'], request_name => 'persistentStorage', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);
  has Repositories => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::RepositoryInput]', traits => ['NameInRequest'], request_name => 'repositories');
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);
  has VpcConnectionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcConnectionName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDevEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::CreateDevEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::CreateDevEnvironment - Arguments for method CreateDevEnvironment on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDevEnvironment on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method CreateDevEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDevEnvironment.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $CreateDevEnvironmentResponse = $codecatalyst->CreateDevEnvironment(
      InstanceType      => 'dev.standard1.small',
      PersistentStorage => {
        SizeInGiB => 1,    # max: 64

      },
      ProjectName => 'MyNameString',
      SpaceName   => 'MyNameString',
      Alias       => 'MyCreateDevEnvironmentRequestAliasString',    # OPTIONAL
      ClientToken => 'MyClientToken',                               # OPTIONAL
      Ides        => [
        {
          Name => 'MyIdeConfigurationNameString',   # min: 1, max: 128; OPTIONAL
          Runtime =>
            'MyIdeConfigurationRuntimeString',      # min: 1, max: 400; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      InactivityTimeoutMinutes => 1,    # OPTIONAL
      Repositories             => [
        {
          RepositoryName => 'MySourceRepositoryNameString',   # min: 1, max: 100
          BranchName     =>
            'MySourceRepositoryBranchString',    # min: 1, max: 100; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      VpcConnectionName => 'MyNameString',    # OPTIONAL
    );

    # Results:
    my $Id                = $CreateDevEnvironmentResponse->Id;
    my $ProjectName       = $CreateDevEnvironmentResponse->ProjectName;
    my $SpaceName         = $CreateDevEnvironmentResponse->SpaceName;
    my $VpcConnectionName = $CreateDevEnvironmentResponse->VpcConnectionName;

    # Returns a L<Paws::CodeCatalyst::CreateDevEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/CreateDevEnvironment>

=head1 ATTRIBUTES


=head2 Alias => Str

The user-defined alias for a Dev Environment.



=head2 ClientToken => Str

A user-specified idempotency token. Idempotency ensures that an API
request completes only once. With an idempotent request, if the
original request completes successfully, the subsequent retries return
the result from the original successful request and have no additional
effect.



=head2 Ides => ArrayRef[L<Paws::CodeCatalyst::IdeConfiguration>]

Information about the integrated development environment (IDE)
configured for a Dev Environment.

An IDE is required to create a Dev Environment. For Dev Environment
creation, this field contains configuration information and must be
provided.



=head2 InactivityTimeoutMinutes => Int

The amount of time the Dev Environment will run without any activity
detected before stopping, in minutes. Only whole integers are allowed.
Dev Environments consume compute minutes when running.



=head2 B<REQUIRED> InstanceType => Str

The Amazon EC2 instace type to use for the Dev Environment.

Valid values are: C<"dev.standard1.small">, C<"dev.standard1.medium">, C<"dev.standard1.large">, C<"dev.standard1.xlarge">

=head2 B<REQUIRED> PersistentStorage => L<Paws::CodeCatalyst::PersistentStorageConfiguration>

Information about the amount of storage allocated to the Dev
Environment.

By default, a Dev Environment is configured to have 16GB of persistent
storage when created from the Amazon CodeCatalyst console, but there is
no default when programmatically creating a Dev Environment. Valid
values for persistent storage are based on memory sizes in 16GB
increments. Valid values are 16, 32, and 64.



=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.



=head2 Repositories => ArrayRef[L<Paws::CodeCatalyst::RepositoryInput>]

The source repository that contains the branch to clone into the Dev
Environment.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.



=head2 VpcConnectionName => Str

The name of the connection that will be used to connect to Amazon VPC,
if any.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDevEnvironment in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

