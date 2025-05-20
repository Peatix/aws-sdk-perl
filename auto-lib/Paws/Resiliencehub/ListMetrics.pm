
package Paws::Resiliencehub::ListMetrics;
  use Moose;
  has Conditions => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::Condition]', traits => ['NameInRequest'], request_name => 'conditions');
  has DataSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSource');
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::Field]', traits => ['NameInRequest'], request_name => 'fields');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sorts => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::Sort]', traits => ['NameInRequest'], request_name => 'sorts');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-metrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::ListMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListMetrics - Arguments for method ListMetrics on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMetrics on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method ListMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMetrics.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $ListMetricsResponse = $resiliencehub->ListMetrics(
      Conditions => [
        {
          Field    => 'MyString255',    # min: 1, max: 255
          Operator => 'Equals'
          , # values: Equals, NotEquals, GreaterThen, GreaterOrEquals, LessThen, LessOrEquals
          Value => 'MyString255',    # min: 1, max: 255
        },
        ...
      ],    # OPTIONAL
      DataSource => 'MyString255',    # OPTIONAL
      Fields     => [
        {
          Name        => 'MyString255',    # min: 1, max: 255
          Aggregation => 'Min',    # values: Min, Max, Sum, Avg, Count; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Sorts      => [
        {
          Field     => 'MyString255',    # min: 1, max: 255
          Ascending => 1,                # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListMetricsResponse->NextToken;
    my $Rows      = $ListMetricsResponse->Rows;

    # Returns a L<Paws::Resiliencehub::ListMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/ListMetrics>

=head1 ATTRIBUTES


=head2 Conditions => ArrayRef[L<Paws::Resiliencehub::Condition>]

Indicates the list of all the conditions that were applied on the
metrics.



=head2 DataSource => Str

Indicates the data source of the metrics.



=head2 Fields => ArrayRef[L<Paws::Resiliencehub::Field>]

Indicates the list of fields in the data source.



=head2 MaxResults => Int

Maximum number of results to include in the response. If more results
exist than the specified C<MaxResults> value, a token is included in
the response so that the remaining results can be retrieved.



=head2 NextToken => Str

Null, or the token from a previous call to get the next set of results.



=head2 Sorts => ArrayRef[L<Paws::Resiliencehub::Sort>]

(Optional) Indicates the order in which you want to sort the fields in
the metrics. By default, the fields are sorted in the ascending order.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMetrics in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

