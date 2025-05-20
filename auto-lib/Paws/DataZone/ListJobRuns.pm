
package Paws::DataZone::ListJobRuns;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has JobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobRuns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/jobs/{jobIdentifier}/runs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListJobRunsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListJobRuns - Arguments for method ListJobRuns on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobRuns on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListJobRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobRuns.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListJobRunsOutput = $datazone->ListJobRuns(
      DomainIdentifier => 'MyDomainId',
      JobIdentifier    => 'MyListJobRunsInputJobIdentifierString',
      MaxResults       => 1,                                         # OPTIONAL
      NextToken        => 'MyPaginationToken',                       # OPTIONAL
      SortOrder        => 'ASCENDING',                               # OPTIONAL
      Status           => 'SCHEDULED',                               # OPTIONAL
    );

    # Results:
    my $Items     = $ListJobRunsOutput->Items;
    my $NextToken = $ListJobRunsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListJobRunsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListJobRuns>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to list job runs.



=head2 B<REQUIRED> JobIdentifier => Str

The ID of the job run.



=head2 MaxResults => Int

The maximum number of job runs to return in a single call to
ListJobRuns. When the number of job runs to be listed is greater than
the value of MaxResults, the response contains a NextToken value that
you can use in a subsequent call to ListJobRuns to list the next set of
job runs.



=head2 NextToken => Str

When the number of job runs is greater than the default value for the
MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of job runs, the response
includes a pagination token named NextToken. You can specify this
NextToken value in a subsequent call to ListJobRuns to list the next
set of job runs.



=head2 SortOrder => Str

Specifies the order in which job runs are to be sorted.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 Status => Str

The status of a job run.

Valid values are: C<"SCHEDULED">, C<"IN_PROGRESS">, C<"SUCCESS">, C<"PARTIALLY_SUCCEEDED">, C<"FAILED">, C<"ABORTED">, C<"TIMED_OUT">, C<"CANCELED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobRuns in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

