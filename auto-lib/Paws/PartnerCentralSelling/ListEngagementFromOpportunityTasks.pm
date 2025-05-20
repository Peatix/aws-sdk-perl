
package Paws::PartnerCentralSelling::ListEngagementFromOpportunityTasks;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has EngagementIdentifier => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OpportunityIdentifier => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Sort => (is => 'ro', isa => 'Paws::PartnerCentralSelling::ListTasksSortBase');
  has TaskIdentifier => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TaskStatus => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEngagementFromOpportunityTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::ListEngagementFromOpportunityTasksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListEngagementFromOpportunityTasks - Arguments for method ListEngagementFromOpportunityTasks on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEngagementFromOpportunityTasks on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method ListEngagementFromOpportunityTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEngagementFromOpportunityTasks.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $ListEngagementFromOpportunityTasksResponse =
      $partnercentral -selling->ListEngagementFromOpportunityTasks(
      Catalog              => 'MyCatalogIdentifier',
      EngagementIdentifier => [ 'MyEngagementArnOrIdentifier', ... ], # OPTIONAL
      MaxResults           => 1,                                      # OPTIONAL
      NextToken            =>
        'MyListEngagementFromOpportunityTasksRequestNextTokenString', # OPTIONAL
      OpportunityIdentifier => [ 'MyOpportunityIdentifier', ... ],    # OPTIONAL
      Sort                  => {
        SortBy    => 'StartTime',    # values: StartTime
        SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING

      },    # OPTIONAL
      TaskIdentifier => [ 'MyTaskArnOrIdentifier', ... ],    # OPTIONAL
      TaskStatus     => [
        'IN_PROGRESS', ...    # values: IN_PROGRESS, COMPLETE, FAILED
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListEngagementFromOpportunityTasksResponse->NextToken;
    my $TaskSummaries =
      $ListEngagementFromOpportunityTasksResponse->TaskSummaries;

# Returns a L<Paws::PartnerCentralSelling::ListEngagementFromOpportunityTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/ListEngagementFromOpportunityTasks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog related to the request. Valid values are:

=over

=item *

AWS: Retrieves the request from the production AWS environment.

=item *

Sandbox: Retrieves the request from a sandbox environment used for
testing or development purposes.

=back




=head2 EngagementIdentifier => ArrayRef[Str|Undef]

Filters tasks by the identifiers of the engagements they created or are
associated with.



=head2 MaxResults => Int

Specifies the maximum number of results to return in a single page of
the response.Use this parameter to control the number of items returned
in each request, which can be useful for performance tuning and
managing large result sets.



=head2 NextToken => Str

The token for requesting the next page of results. This value is
obtained from the NextToken field in the response of a previous call to
this API. Use this parameter for pagination when the result set spans
multiple pages.



=head2 OpportunityIdentifier => ArrayRef[Str|Undef]

The identifier of the original opportunity associated with this task.



=head2 Sort => L<Paws::PartnerCentralSelling::ListTasksSortBase>

Specifies the sorting criteria for the returned results. This allows
you to order the tasks based on specific attributes.



=head2 TaskIdentifier => ArrayRef[Str|Undef]

Filters tasks by their unique identifiers. Use this when you want to
retrieve information about specific tasks.



=head2 TaskStatus => ArrayRef[Str|Undef]

Filters the tasks based on their current status. This allows you to
focus on tasks in specific states.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEngagementFromOpportunityTasks in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

