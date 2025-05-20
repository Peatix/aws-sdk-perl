
package Paws::WorkSpacesWeb::GetSession;
  use Moose;
  has PortalId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'portalId', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals/{portalId}/sessions/{sessionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::GetSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetSession - Arguments for method GetSession on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSession on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method GetSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSession.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $GetSessionResponse = $workspaces -web->GetSession(
      PortalId  => 'MyPortalId',
      SessionId => 'MySessionId',

    );

    # Results:
    my $Session = $GetSessionResponse->Session;

    # Returns a L<Paws::WorkSpacesWeb::GetSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/GetSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PortalId => Str

The ID of the web portal for the session.



=head2 B<REQUIRED> SessionId => Str

The ID of the session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSession in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

