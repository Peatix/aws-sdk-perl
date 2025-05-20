
package Paws::DataZone::ListLineageNodeHistory;
  use Moose;
  has Direction => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'direction');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EventTimestampGTE => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'timestampGTE');
  has EventTimestampLTE => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'timestampLTE');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLineageNodeHistory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/lineage/nodes/{identifier}/history');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListLineageNodeHistoryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListLineageNodeHistory - Arguments for method ListLineageNodeHistory on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLineageNodeHistory on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListLineageNodeHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLineageNodeHistory.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListLineageNodeHistoryOutput = $datazone->ListLineageNodeHistory(
      DomainIdentifier  => 'MyDomainId',
      Identifier        => 'MyLineageNodeIdentifier',
      Direction         => 'UPSTREAM',                  # OPTIONAL
      EventTimestampGTE => '1970-01-01T01:00:00',       # OPTIONAL
      EventTimestampLTE => '1970-01-01T01:00:00',       # OPTIONAL
      MaxResults        => 1,                           # OPTIONAL
      NextToken         => 'MyPaginationToken',         # OPTIONAL
      SortOrder         => 'ASCENDING',                 # OPTIONAL
    );

    # Results:
    my $NextToken = $ListLineageNodeHistoryOutput->NextToken;
    my $Nodes     = $ListLineageNodeHistoryOutput->Nodes;

    # Returns a L<Paws::DataZone::ListLineageNodeHistoryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListLineageNodeHistory>

=head1 ATTRIBUTES


=head2 Direction => Str

The direction of the data lineage node refers to the lineage node
having neighbors in that direction. For example, if direction is
C<UPSTREAM>, the C<ListLineageNodeHistory> API responds with historical
versions with upstream neighbors only.

Valid values are: C<"UPSTREAM">, C<"DOWNSTREAM">

=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to list the history of the
specified data lineage node.



=head2 EventTimestampGTE => Str

Specifies whether the action is to return data lineage node history
from the time after the event timestamp.



=head2 EventTimestampLTE => Str

Specifies whether the action is to return data lineage node history
from the time prior of the event timestamp.



=head2 B<REQUIRED> Identifier => Str

The ID of the data lineage node whose history you want to list.



=head2 MaxResults => Int

The maximum number of history items to return in a single call to
ListLineageNodeHistory. When the number of memberships to be listed is
greater than the value of MaxResults, the response contains a NextToken
value that you can use in a subsequent call to ListLineageNodeHistory
to list the next set of items.



=head2 NextToken => Str

When the number of history items is greater than the default value for
the MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of items, the response includes
a pagination token named NextToken. You can specify this NextToken
value in a subsequent call to ListLineageNodeHistory to list the next
set of items.



=head2 SortOrder => Str

The order by which you want data lineage node history to be sorted.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLineageNodeHistory in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

