
package Paws::CloudTrail::ListQueries;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has EventDataStore => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryStatus => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::ListQueriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListQueries - Arguments for method ListQueries on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQueries on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method ListQueries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQueries.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $ListQueriesResponse = $cloudtrail->ListQueries(
      EventDataStore => 'MyEventDataStoreArn',
      EndTime        => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults     => 1,                        # OPTIONAL
      NextToken      => 'MyPaginationToken',      # OPTIONAL
      QueryStatus    => 'QUEUED',                 # OPTIONAL
      StartTime      => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListQueriesResponse->NextToken;
    my $Queries   = $ListQueriesResponse->Queries;

    # Returns a L<Paws::CloudTrail::ListQueriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/ListQueries>

=head1 ATTRIBUTES


=head2 EndTime => Str

Use with C<StartTime> to bound a C<ListQueries> request, and limit its
results to only those queries run within a specified time period.



=head2 B<REQUIRED> EventDataStore => Str

The ARN (or the ID suffix of the ARN) of an event data store on which
queries were run.



=head2 MaxResults => Int

The maximum number of queries to show on a page.



=head2 NextToken => Str

A token you can use to get the next page of results.



=head2 QueryStatus => Str

The status of queries that you want to return in results. Valid values
for C<QueryStatus> include C<QUEUED>, C<RUNNING>, C<FINISHED>,
C<FAILED>, C<TIMED_OUT>, or C<CANCELLED>.

Valid values are: C<"QUEUED">, C<"RUNNING">, C<"FINISHED">, C<"FAILED">, C<"CANCELLED">, C<"TIMED_OUT">

=head2 StartTime => Str

Use with C<EndTime> to bound a C<ListQueries> request, and limit its
results to only those queries run within a specified time period.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQueries in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

