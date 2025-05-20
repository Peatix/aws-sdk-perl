
package Paws::Prometheus::ListWorkspaces;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'alias');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkspaces');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Prometheus::ListWorkspacesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::ListWorkspaces - Arguments for method ListWorkspaces on L<Paws::Prometheus>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkspaces on the
L<Amazon Prometheus Service|Paws::Prometheus> service. Use the attributes of this class
as arguments to method ListWorkspaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkspaces.

=head1 SYNOPSIS

    my $aps = Paws->service('Prometheus');
    my $ListWorkspacesResponse = $aps->ListWorkspaces(
      Alias      => 'MyWorkspaceAlias',     # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListWorkspacesResponse->NextToken;
    my $Workspaces = $ListWorkspacesResponse->Workspaces;

    # Returns a L<Paws::Prometheus::ListWorkspacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps/ListWorkspaces>

=head1 ATTRIBUTES


=head2 Alias => Str

If this is included, it filters the results to only the workspaces with
names that start with the value that you specify here.

Amazon Managed Service for Prometheus will automatically strip any
blank spaces from the beginning and end of the alias that you specify.



=head2 MaxResults => Int

The maximum number of workspaces to return per request. The default is
100.



=head2 NextToken => Str

The token for the next set of items to return. You receive this token
from a previous call, and use it to get the next page of results. The
other parameters must be the same as the initial call.

For example, if your initial request has C<maxResults> of 10, and there
are 12 workspaces to return, then your initial request will return 10
and a C<nextToken>. Using the next token in a subsequent call will
return the remaining 2 workspaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkspaces in L<Paws::Prometheus>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

