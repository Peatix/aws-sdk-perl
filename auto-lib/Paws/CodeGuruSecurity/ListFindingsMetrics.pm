
package Paws::CodeGuruSecurity::ListFindingsMetrics;
  use Moose;
  has EndDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endDate', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has StartDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startDate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFindingsMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metrics/findings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruSecurity::ListFindingsMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::ListFindingsMetrics - Arguments for method ListFindingsMetrics on L<Paws::CodeGuruSecurity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFindingsMetrics on the
L<Amazon CodeGuru Security|Paws::CodeGuruSecurity> service. Use the attributes of this class
as arguments to method ListFindingsMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFindingsMetrics.

=head1 SYNOPSIS

    my $codeguru-security = Paws->service('CodeGuruSecurity');
    my $ListFindingsMetricsResponse = $codeguru -security->ListFindingsMetrics(
      EndDate    => '1970-01-01T01:00:00',
      StartDate  => '1970-01-01T01:00:00',
      MaxResults => 1,                       # OPTIONAL
      NextToken  => 'MyNextToken',           # OPTIONAL
    );

    # Results:
    my $FindingsMetrics = $ListFindingsMetricsResponse->FindingsMetrics;
    my $NextToken       = $ListFindingsMetricsResponse->NextToken;

    # Returns a L<Paws::CodeGuruSecurity::ListFindingsMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-security/ListFindingsMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndDate => Str

The end date of the interval which you want to retrieve metrics from.
Round to the nearest day.



=head2 MaxResults => Int

The maximum number of results to return in the response. Use this
parameter when paginating results. If additional results exist beyond
the number you specify, the C<nextToken> element is returned in the
response. Use C<nextToken> in a subsequent request to retrieve
additional results. If not specified, returns 1000 results.



=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first
request. For subsequent calls, use the C<nextToken> value returned from
the previous request to continue listing results after the first page.



=head2 B<REQUIRED> StartDate => Str

The start date of the interval which you want to retrieve metrics from.
Rounds to the nearest day.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFindingsMetrics in L<Paws::CodeGuruSecurity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

