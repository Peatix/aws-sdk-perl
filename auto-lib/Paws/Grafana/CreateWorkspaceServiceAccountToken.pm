
package Paws::Grafana::CreateWorkspaceServiceAccountToken;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SecondsToLive => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'secondsToLive', required => 1);
  has ServiceAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceAccountId', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkspaceServiceAccountToken');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::CreateWorkspaceServiceAccountTokenResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::CreateWorkspaceServiceAccountToken - Arguments for method CreateWorkspaceServiceAccountToken on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkspaceServiceAccountToken on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method CreateWorkspaceServiceAccountToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkspaceServiceAccountToken.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $CreateWorkspaceServiceAccountTokenResponse =
      $grafana->CreateWorkspaceServiceAccountToken(
      Name             => 'MyServiceAccountTokenName',
      SecondsToLive    => 1,
      ServiceAccountId => 'MyString',
      WorkspaceId      => 'MyWorkspaceId',

      );

    # Results:
    my $ServiceAccountId =
      $CreateWorkspaceServiceAccountTokenResponse->ServiceAccountId;
    my $ServiceAccountToken =
      $CreateWorkspaceServiceAccountTokenResponse->ServiceAccountToken;
    my $WorkspaceId = $CreateWorkspaceServiceAccountTokenResponse->WorkspaceId;

# Returns a L<Paws::Grafana::CreateWorkspaceServiceAccountTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/CreateWorkspaceServiceAccountToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

A name for the token to create.



=head2 B<REQUIRED> SecondsToLive => Int

Sets how long the token will be valid, in seconds. You can set the time
up to 30 days in the future.



=head2 B<REQUIRED> ServiceAccountId => Str

The ID of the service account for which to create a token.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace the service account resides within.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkspaceServiceAccountToken in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

