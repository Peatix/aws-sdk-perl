
package Paws::CodeCatalyst::GetDevEnvironment;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDevEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::GetDevEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetDevEnvironment - Arguments for method GetDevEnvironment on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDevEnvironment on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method GetDevEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDevEnvironment.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $GetDevEnvironmentResponse = $codecatalyst->GetDevEnvironment(
      Id          => 'MyUuid',
      ProjectName => 'MyNameString',
      SpaceName   => 'MyNameString',

    );

    # Results:
    my $Alias     = $GetDevEnvironmentResponse->Alias;
    my $CreatorId = $GetDevEnvironmentResponse->CreatorId;
    my $Id        = $GetDevEnvironmentResponse->Id;
    my $Ides      = $GetDevEnvironmentResponse->Ides;
    my $InactivityTimeoutMinutes =
      $GetDevEnvironmentResponse->InactivityTimeoutMinutes;
    my $InstanceType      = $GetDevEnvironmentResponse->InstanceType;
    my $LastUpdatedTime   = $GetDevEnvironmentResponse->LastUpdatedTime;
    my $PersistentStorage = $GetDevEnvironmentResponse->PersistentStorage;
    my $ProjectName       = $GetDevEnvironmentResponse->ProjectName;
    my $Repositories      = $GetDevEnvironmentResponse->Repositories;
    my $SpaceName         = $GetDevEnvironmentResponse->SpaceName;
    my $Status            = $GetDevEnvironmentResponse->Status;
    my $StatusReason      = $GetDevEnvironmentResponse->StatusReason;
    my $VpcConnectionName = $GetDevEnvironmentResponse->VpcConnectionName;

    # Returns a L<Paws::CodeCatalyst::GetDevEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/GetDevEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The system-generated unique ID of the Dev Environment for which you
want to view information. To retrieve a list of Dev Environment IDs,
use ListDevEnvironments.



=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDevEnvironment in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

