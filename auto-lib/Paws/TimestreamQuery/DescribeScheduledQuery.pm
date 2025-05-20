
package Paws::TimestreamQuery::DescribeScheduledQuery;
  use Moose;
  has ScheduledQueryArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScheduledQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamQuery::DescribeScheduledQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::DescribeScheduledQuery - Arguments for method DescribeScheduledQuery on L<Paws::TimestreamQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScheduledQuery on the
L<Amazon Timestream Query|Paws::TimestreamQuery> service. Use the attributes of this class
as arguments to method DescribeScheduledQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScheduledQuery.

=head1 SYNOPSIS

    my $query.timestream = Paws->service('TimestreamQuery');
    my $DescribeScheduledQueryResponse =
      $query . timestream->DescribeScheduledQuery(
      ScheduledQueryArn => 'MyAmazonResourceName',

      );

    # Results:
    my $ScheduledQuery = $DescribeScheduledQueryResponse->ScheduledQuery;

    # Returns a L<Paws::TimestreamQuery::DescribeScheduledQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream/DescribeScheduledQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduledQueryArn => Str

The ARN of the scheduled query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScheduledQuery in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

