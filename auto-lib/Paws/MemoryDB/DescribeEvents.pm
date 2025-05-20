
package Paws::MemoryDB::DescribeEvents;
  use Moose;
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SourceName => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::DescribeEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::DescribeEvents - Arguments for method DescribeEvents on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEvents on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method DescribeEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEvents.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $DescribeEventsResponse = $memory -db->DescribeEvents(
      Duration   => 1,                        # OPTIONAL
      EndTime    => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyString',               # OPTIONAL
      SourceName => 'MyString',               # OPTIONAL
      SourceType => 'node',                   # OPTIONAL
      StartTime  => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $Events    = $DescribeEventsResponse->Events;
    my $NextToken = $DescribeEventsResponse->NextToken;

    # Returns a L<Paws::MemoryDB::DescribeEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/DescribeEvents>

=head1 ATTRIBUTES


=head2 Duration => Int

The number of minutes worth of events to retrieve.



=head2 EndTime => Str

The end of the time interval for which to retrieve events, specified in
ISO 8601 format. Example: 2017-03-30T07:03:49.555Z



=head2 MaxResults => Int

The maximum number of records to include in the response. If more
records exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.



=head2 NextToken => Str

An optional argument to pass in case the total number of records
exceeds the value of MaxResults. If nextToken is returned, there are
more results available. The value of nextToken is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged.



=head2 SourceName => Str

The identifier of the event source for which events are returned. If
not specified, all sources are included in the response.



=head2 SourceType => Str

The event source to retrieve events for. If no value is specified, all
events are returned.

Valid values are: C<"node">, C<"parameter-group">, C<"subnet-group">, C<"cluster">, C<"user">, C<"acl">

=head2 StartTime => Str

The beginning of the time interval to retrieve events for, specified in
ISO 8601 format. Example: 2017-03-30T07:03:49.555Z




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEvents in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

