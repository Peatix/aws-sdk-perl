
package Paws::Deadline::SearchSteps;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FilterExpressions => (is => 'ro', isa => 'Paws::Deadline::SearchGroupedFilterExpressions', traits => ['NameInRequest'], request_name => 'filterExpressions');
  has ItemOffset => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'itemOffset', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'pageSize');
  has QueueIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'queueIds', required => 1);
  has SortExpressions => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::SearchSortExpression]', traits => ['NameInRequest'], request_name => 'sortExpressions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchSteps');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/search/steps');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::SearchStepsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::SearchSteps - Arguments for method SearchSteps on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchSteps on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method SearchSteps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchSteps.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $SearchStepsResponse = $deadline->SearchSteps(
      FarmId            => 'MyFarmId',
      ItemOffset        => 1,
      QueueIds          => [ 'MyQueueId', ... ],
      FilterExpressions => {
        Filters => [
          {
            DateTimeFilter => {
              DateTime => '1970-01-01T01:00:00',
              Name     => 'MyString',
              Operator => 'EQUAL'
              , # values: EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN

            },    # OPTIONAL
            GroupFilter     => <SearchGroupedFilterExpressions>,
            ParameterFilter => {
              Name     => 'MyString',
              Operator => 'EQUAL'
              , # values: EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
              Value => 'MyParameterValue',    # min: 1, max: 256

            },    # OPTIONAL
            SearchTermFilter => {
              SearchTerm => 'MySearchTerm',    # min: 1, max: 256
              MatchType  =>
                'FUZZY_MATCH',    # values: FUZZY_MATCH, CONTAINS; OPTIONAL
            },    # OPTIONAL
            StringFilter => {
              Name     => 'MyString',
              Operator => 'EQUAL'
              , # values: EQUAL, NOT_EQUAL, GREATER_THAN_EQUAL_TO, GREATER_THAN, LESS_THAN_EQUAL_TO, LESS_THAN
              Value => 'MyStringFilter',    # min: 1, max: 256

            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 3
        Operator => 'AND',    # values: AND, OR

      },    # OPTIONAL
      JobId           => 'MyJobId',    # OPTIONAL
      PageSize        => 1,            # OPTIONAL
      SortExpressions => [
        {
          FieldSort => {
            Name      => 'MyString',
            SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING

          },    # OPTIONAL
          ParameterSort => {
            Name      => 'MyString',
            SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING

          },    # OPTIONAL
          UserJobsFirst => {
            UserIdentityId => 'MyString',

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $NextItemOffset = $SearchStepsResponse->NextItemOffset;
    my $Steps          = $SearchStepsResponse->Steps;
    my $TotalResults   = $SearchStepsResponse->TotalResults;

    # Returns a L<Paws::Deadline::SearchStepsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/SearchSteps>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID to use for the step search.



=head2 FilterExpressions => L<Paws::Deadline::SearchGroupedFilterExpressions>

The filter expression, C<AND> or C<OR>, to use when searching among a
group of search strings in a resource. You can use two groupings per
search each within parenthesis C<()>.



=head2 B<REQUIRED> ItemOffset => Int

Defines how far into the scrollable list to start the return of
results.



=head2 JobId => Str

The job ID to use in the step search.



=head2 PageSize => Int

Specifies the number of items per page for the resource.



=head2 B<REQUIRED> QueueIds => ArrayRef[Str|Undef]

The queue IDs in the step search.



=head2 SortExpressions => ArrayRef[L<Paws::Deadline::SearchSortExpression>]

The search terms for a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchSteps in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

