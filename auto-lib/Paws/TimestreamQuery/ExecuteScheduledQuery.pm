
package Paws::TimestreamQuery::ExecuteScheduledQuery;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has InvocationTime => (is => 'ro', isa => 'Str', required => 1);
  has QueryInsights => (is => 'ro', isa => 'Paws::TimestreamQuery::ScheduledQueryInsights');
  has ScheduledQueryArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteScheduledQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::ExecuteScheduledQuery - Arguments for method ExecuteScheduledQuery on L<Paws::TimestreamQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteScheduledQuery on the
L<Amazon Timestream Query|Paws::TimestreamQuery> service. Use the attributes of this class
as arguments to method ExecuteScheduledQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteScheduledQuery.

=head1 SYNOPSIS

    my $query.timestream = Paws->service('TimestreamQuery');
    $query . timestream->ExecuteScheduledQuery(
      InvocationTime    => '1970-01-01T01:00:00',
      ScheduledQueryArn => 'MyAmazonResourceName',
      ClientToken       => 'MyClientToken',          # OPTIONAL
      QueryInsights     => {
        Mode => 'ENABLED_WITH_RATE_CONTROL'
        ,    # values: ENABLED_WITH_RATE_CONTROL, DISABLED

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream/ExecuteScheduledQuery>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Not used.



=head2 B<REQUIRED> InvocationTime => Str

The timestamp in UTC. Query will be run as if it was invoked at this
timestamp.



=head2 QueryInsights => L<Paws::TimestreamQuery::ScheduledQueryInsights>

Encapsulates settings for enabling C<QueryInsights>.

Enabling C<QueryInsights> returns insights and metrics as a part of the
Amazon SNS notification for the query that you executed. You can use
C<QueryInsights> to tune your query performance and cost.



=head2 B<REQUIRED> ScheduledQueryArn => Str

ARN of the scheduled query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteScheduledQuery in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

