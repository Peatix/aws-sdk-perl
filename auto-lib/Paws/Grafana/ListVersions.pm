
package Paws::Grafana::ListVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'workspace-id');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::ListVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::ListVersions - Arguments for method ListVersions on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVersions on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method ListVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVersions.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $ListVersionsResponse = $grafana->ListVersions(
      MaxResults  => 1,                      # OPTIONAL
      NextToken   => 'MyPaginationToken',    # OPTIONAL
      WorkspaceId => 'MyWorkspaceId',        # OPTIONAL
    );

    # Results:
    my $GrafanaVersions = $ListVersionsResponse->GrafanaVersions;
    my $NextToken       = $ListVersionsResponse->NextToken;

    # Returns a L<Paws::Grafana::ListVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/ListVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to include in the response.



=head2 NextToken => Str

The token to use when requesting the next set of results. You receive
this token from a previous C<ListVersions> operation.



=head2 WorkspaceId => Str

The ID of the workspace to list the available upgrade versions. If not
included, lists all versions of Grafana that are supported for
C<CreateWorkspace>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVersions in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

