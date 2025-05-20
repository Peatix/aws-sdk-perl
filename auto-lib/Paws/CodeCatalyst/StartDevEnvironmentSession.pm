
package Paws::CodeCatalyst::StartDevEnvironmentSession;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);
  has SessionConfiguration => (is => 'ro', isa => 'Paws::CodeCatalyst::DevEnvironmentSessionConfiguration', traits => ['NameInRequest'], request_name => 'sessionConfiguration', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDevEnvironmentSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::StartDevEnvironmentSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::StartDevEnvironmentSession - Arguments for method StartDevEnvironmentSession on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDevEnvironmentSession on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method StartDevEnvironmentSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDevEnvironmentSession.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $StartDevEnvironmentSessionResponse =
      $codecatalyst->StartDevEnvironmentSession(
      Id                   => 'MyUuid',
      ProjectName          => 'MyNameString',
      SessionConfiguration => {
        SessionType                        => 'SSM',    # values: SSM, SSH
        ExecuteCommandSessionConfiguration => {
          Command => 'MyExecuteCommandSessionConfigurationCommandString'
          ,                                             # min: 1, max: 255
          Arguments => [
            'MyExecuteCommandSessionConfigurationArgumentsMemberString',
            ...                                         # min: 1, max: 255
          ],    # OPTIONAL
        },    # OPTIONAL
      },
      SpaceName => 'MyNameString',

      );

    # Results:
    my $AccessDetails = $StartDevEnvironmentSessionResponse->AccessDetails;
    my $Id            = $StartDevEnvironmentSessionResponse->Id;
    my $ProjectName   = $StartDevEnvironmentSessionResponse->ProjectName;
    my $SessionId     = $StartDevEnvironmentSessionResponse->SessionId;
    my $SpaceName     = $StartDevEnvironmentSessionResponse->SpaceName;

   # Returns a L<Paws::CodeCatalyst::StartDevEnvironmentSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/StartDevEnvironmentSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The system-generated unique ID of the Dev Environment.



=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.



=head2 B<REQUIRED> SessionConfiguration => L<Paws::CodeCatalyst::DevEnvironmentSessionConfiguration>





=head2 B<REQUIRED> SpaceName => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDevEnvironmentSession in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

