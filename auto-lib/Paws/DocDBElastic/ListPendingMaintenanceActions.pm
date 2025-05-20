
package Paws::DocDBElastic::ListPendingMaintenanceActions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPendingMaintenanceActions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pending-actions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDBElastic::ListPendingMaintenanceActionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::ListPendingMaintenanceActions - Arguments for method ListPendingMaintenanceActions on L<Paws::DocDBElastic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPendingMaintenanceActions on the
L<Amazon DocumentDB Elastic Clusters|Paws::DocDBElastic> service. Use the attributes of this class
as arguments to method ListPendingMaintenanceActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPendingMaintenanceActions.

=head1 SYNOPSIS

    my $docdb-elastic = Paws->service('DocDBElastic');
    my $ListPendingMaintenanceActionsOutput =
      $docdb -elastic->ListPendingMaintenanceActions(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListPendingMaintenanceActionsOutput->NextToken;
    my $ResourcePendingMaintenanceActions =
      $ListPendingMaintenanceActionsOutput->ResourcePendingMaintenanceActions;

  # Returns a L<Paws::DocDBElastic::ListPendingMaintenanceActionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/docdb-elastic/ListPendingMaintenanceActions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to include in the response. If more
records exist than the specified C<maxResults> value, a pagination
token (marker) is included in the response so that the remaining
results can be retrieved.



=head2 NextToken => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<maxResults>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPendingMaintenanceActions in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

