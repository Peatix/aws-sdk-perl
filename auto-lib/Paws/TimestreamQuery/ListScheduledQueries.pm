
package Paws::TimestreamQuery::ListScheduledQueries;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListScheduledQueries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamQuery::ListScheduledQueriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::ListScheduledQueries - Arguments for method ListScheduledQueries on L<Paws::TimestreamQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListScheduledQueries on the
L<Amazon Timestream Query|Paws::TimestreamQuery> service. Use the attributes of this class
as arguments to method ListScheduledQueries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListScheduledQueries.

=head1 SYNOPSIS

    my $query.timestream = Paws->service('TimestreamQuery');
    my $ListScheduledQueriesResponse =
      $query . timestream->ListScheduledQueries(
      MaxResults => 1,                                       # OPTIONAL
      NextToken  => 'MyNextScheduledQueriesResultsToken',    # OPTIONAL
      );

    # Results:
    my $NextToken        = $ListScheduledQueriesResponse->NextToken;
    my $ScheduledQueries = $ListScheduledQueriesResponse->ScheduledQueries;

    # Returns a L<Paws::TimestreamQuery::ListScheduledQueriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream/ListScheduledQueries>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return in the output. If the total
number of items available is more than the value specified, a
C<NextToken> is provided in the output. To resume pagination, provide
the C<NextToken> value as the argument to the subsequent call to
C<ListScheduledQueriesRequest>.



=head2 NextToken => Str

A pagination token to resume pagination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListScheduledQueries in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

