
package Paws::CodeCatalyst::UpdateDevEnvironment;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alias');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has Ides => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::IdeConfiguration]', traits => ['NameInRequest'], request_name => 'ides');
  has InactivityTimeoutMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'inactivityTimeoutMinutes');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType');
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDevEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::UpdateDevEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::UpdateDevEnvironment - Arguments for method UpdateDevEnvironment on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDevEnvironment on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method UpdateDevEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDevEnvironment.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $UpdateDevEnvironmentResponse = $codecatalyst->UpdateDevEnvironment(
      Id          => 'MyUuid',
      ProjectName => 'MyNameString',
      SpaceName   => 'MyNameString',
      Alias       => 'MyUpdateDevEnvironmentRequestAliasString',    # OPTIONAL
      ClientToken => 'MyClientToken',                               # OPTIONAL
      Ides        => [
        {
          Name => 'MyIdeConfigurationNameString',   # min: 1, max: 128; OPTIONAL
          Runtime =>
            'MyIdeConfigurationRuntimeString',      # min: 1, max: 400; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      InactivityTimeoutMinutes => 1,                        # OPTIONAL
      InstanceType             => 'dev.standard1.small',    # OPTIONAL
    );

    # Results:
    my $Alias       = $UpdateDevEnvironmentResponse->Alias;
    my $ClientToken = $UpdateDevEnvironmentResponse->ClientToken;
    my $Id          = $UpdateDevEnvironmentResponse->Id;
    my $Ides        = $UpdateDevEnvironmentResponse->Ides;
    my $InactivityTimeoutMinutes =
      $UpdateDevEnvironmentResponse->InactivityTimeoutMinutes;
    my $InstanceType = $UpdateDevEnvironmentResponse->InstanceType;
    my $ProjectName  = $UpdateDevEnvironmentResponse->ProjectName;
    my $SpaceName    = $UpdateDevEnvironmentResponse->SpaceName;

    # Returns a L<Paws::CodeCatalyst::UpdateDevEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/UpdateDevEnvironment>

=head1 ATTRIBUTES


=head2 Alias => Str

The user-specified alias for the Dev Environment. Changing this value
will not cause a restart.



=head2 ClientToken => Str

A user-specified idempotency token. Idempotency ensures that an API
request completes only once. With an idempotent request, if the
original request completes successfully, the subsequent retries return
the result from the original successful request and have no additional
effect.



=head2 B<REQUIRED> Id => Str

The system-generated unique ID of the Dev Environment.



=head2 Ides => ArrayRef[L<Paws::CodeCatalyst::IdeConfiguration>]

Information about the integrated development environment (IDE)
configured for a Dev Environment.



=head2 InactivityTimeoutMinutes => Int

The amount of time the Dev Environment will run without any activity
detected before stopping, in minutes. Only whole integers are allowed.
Dev Environments consume compute minutes when running.

Changing this value will cause a restart of the Dev Environment if it
is running.



=head2 InstanceType => Str

The Amazon EC2 instace type to use for the Dev Environment.

Changing this value will cause a restart of the Dev Environment if it
is running.

Valid values are: C<"dev.standard1.small">, C<"dev.standard1.medium">, C<"dev.standard1.large">, C<"dev.standard1.xlarge">

=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDevEnvironment in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

