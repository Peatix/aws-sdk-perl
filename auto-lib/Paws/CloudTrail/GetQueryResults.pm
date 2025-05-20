
package Paws::CloudTrail::GetQueryResults;
  use Moose;
  has EventDataStore => (is => 'ro', isa => 'Str');
  has EventDataStoreOwnerAccountId => (is => 'ro', isa => 'Str');
  has MaxQueryResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueryResults');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::GetQueryResultsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GetQueryResults - Arguments for method GetQueryResults on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueryResults on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method GetQueryResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueryResults.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $GetQueryResultsResponse = $cloudtrail->GetQueryResults(
      QueryId                      => 'MyUUID',
      EventDataStore               => 'MyEventDataStoreArn',    # OPTIONAL
      EventDataStoreOwnerAccountId => 'MyAccountId',            # OPTIONAL
      MaxQueryResults              => 1,                        # OPTIONAL
      NextToken                    => 'MyPaginationToken',      # OPTIONAL
    );

    # Results:
    my $ErrorMessage    = $GetQueryResultsResponse->ErrorMessage;
    my $NextToken       = $GetQueryResultsResponse->NextToken;
    my $QueryResultRows = $GetQueryResultsResponse->QueryResultRows;
    my $QueryStatistics = $GetQueryResultsResponse->QueryStatistics;
    my $QueryStatus     = $GetQueryResultsResponse->QueryStatus;

    # Returns a L<Paws::CloudTrail::GetQueryResultsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/GetQueryResults>

=head1 ATTRIBUTES


=head2 EventDataStore => Str

The ARN (or ID suffix of the ARN) of the event data store against which
the query was run.



=head2 EventDataStoreOwnerAccountId => Str

The account ID of the event data store owner.



=head2 MaxQueryResults => Int

The maximum number of query results to display on a single page.



=head2 NextToken => Str

A token you can use to get the next page of query results.



=head2 B<REQUIRED> QueryId => Str

The ID of the query for which you want to get results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueryResults in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

