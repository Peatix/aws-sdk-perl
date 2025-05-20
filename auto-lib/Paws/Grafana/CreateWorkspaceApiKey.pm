
package Paws::Grafana::CreateWorkspaceApiKey;
  use Moose;
  has KeyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyName', required => 1);
  has KeyRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyRole', required => 1);
  has SecondsToLive => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'secondsToLive', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkspaceApiKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/apikeys');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::CreateWorkspaceApiKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::CreateWorkspaceApiKey - Arguments for method CreateWorkspaceApiKey on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkspaceApiKey on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method CreateWorkspaceApiKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkspaceApiKey.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $CreateWorkspaceApiKeyResponse = $grafana->CreateWorkspaceApiKey(
      KeyName       => 'MyApiKeyName',
      KeyRole       => 'MyString',
      SecondsToLive => 1,
      WorkspaceId   => 'MyWorkspaceId',

    );

    # Results:
    my $Key         = $CreateWorkspaceApiKeyResponse->Key;
    my $KeyName     = $CreateWorkspaceApiKeyResponse->KeyName;
    my $WorkspaceId = $CreateWorkspaceApiKeyResponse->WorkspaceId;

    # Returns a L<Paws::Grafana::CreateWorkspaceApiKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/CreateWorkspaceApiKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyName => Str

Specifies the name of the key. Keynames must be unique to the
workspace.



=head2 B<REQUIRED> KeyRole => Str

Specifies the permission level of the key.

Valid values: C<ADMIN>|C<EDITOR>|C<VIEWER>



=head2 B<REQUIRED> SecondsToLive => Int

Specifies the time in seconds until the key expires. Keys can be valid
for up to 30 days.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace to create an API key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkspaceApiKey in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

