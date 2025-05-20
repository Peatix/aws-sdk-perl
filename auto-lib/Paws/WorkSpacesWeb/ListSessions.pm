
package Paws::WorkSpacesWeb::ListSessions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PortalId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'portalId', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sessionId');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');
  has Username => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'username');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSessions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals/{portalId}/sessions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::ListSessionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListSessions - Arguments for method ListSessions on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSessions on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method ListSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSessions.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $ListSessionsResponse = $workspaces -web->ListSessions(
      PortalId   => 'MyPortalId',
      MaxResults => 1,                       # OPTIONAL
      NextToken  => 'MyPaginationToken',     # OPTIONAL
      SessionId  => 'MySessionId',           # OPTIONAL
      SortBy     => 'StartTimeAscending',    # OPTIONAL
      Status     => 'Active',                # OPTIONAL
      Username   => 'MyUsername',            # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSessionsResponse->NextToken;
    my $Sessions  = $ListSessionsResponse->Sessions;

    # Returns a L<Paws::WorkSpacesWeb::ListSessionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/ListSessions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be included in the next page.



=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.



=head2 B<REQUIRED> PortalId => Str

The ID of the web portal for the sessions.



=head2 SessionId => Str

The ID of the session.



=head2 SortBy => Str

The method in which the returned sessions should be sorted.

Valid values are: C<"StartTimeAscending">, C<"StartTimeDescending">

=head2 Status => Str

The status of the session.

Valid values are: C<"Active">, C<"Terminated">

=head2 Username => Str

The username of the session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSessions in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

