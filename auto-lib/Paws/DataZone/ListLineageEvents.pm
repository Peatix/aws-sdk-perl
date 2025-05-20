
package Paws::DataZone::ListLineageEvents;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProcessingStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'processingStatus');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');
  has TimestampAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'timestampAfter');
  has TimestampBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'timestampBefore');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLineageEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/lineage/events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListLineageEventsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListLineageEvents - Arguments for method ListLineageEvents on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLineageEvents on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListLineageEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLineageEvents.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListLineageEventsOutput = $datazone->ListLineageEvents(
      DomainIdentifier => 'MyDomainId',
      MaxResults       => 1,                        # OPTIONAL
      NextToken        => 'MyPaginationToken',      # OPTIONAL
      ProcessingStatus => 'REQUESTED',              # OPTIONAL
      SortOrder        => 'ASCENDING',              # OPTIONAL
      TimestampAfter   => '1970-01-01T01:00:00',    # OPTIONAL
      TimestampBefore  => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListLineageEventsOutput->Items;
    my $NextToken = $ListLineageEventsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListLineageEventsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListLineageEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to list lineage events.



=head2 MaxResults => Int

The maximum number of lineage events to return in a single call to
ListLineageEvents. When the number of lineage events to be listed is
greater than the value of MaxResults, the response contains a NextToken
value that you can use in a subsequent call to ListLineageEvents to
list the next set of lineage events.



=head2 NextToken => Str

When the number of lineage events is greater than the default value for
the MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of lineage events, the response
includes a pagination token named NextToken. You can specify this
NextToken value in a subsequent call to ListLineageEvents to list the
next set of lineage events.



=head2 ProcessingStatus => Str

The processing status of a lineage event.

Valid values are: C<"REQUESTED">, C<"PROCESSING">, C<"SUCCESS">, C<"FAILED">

=head2 SortOrder => Str

The sort order of the lineage events.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 TimestampAfter => Str

The after timestamp of a lineage event.



=head2 TimestampBefore => Str

The before timestamp of a lineage event.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLineageEvents in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

