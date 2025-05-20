
package Paws::Grafana::ListWorkspaces;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkspaces');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::ListWorkspacesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::ListWorkspaces - Arguments for method ListWorkspaces on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkspaces on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method ListWorkspaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkspaces.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $ListWorkspacesResponse = $grafana->ListWorkspaces(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListWorkspacesResponse->NextToken;
    my $Workspaces = $ListWorkspacesResponse->Workspaces;

    # Returns a L<Paws::Grafana::ListWorkspacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/ListWorkspaces>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of workspaces to include in the results.



=head2 NextToken => Str

The token for the next set of workspaces to return. (You receive this
token from a previous C<ListWorkspaces> operation.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkspaces in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

