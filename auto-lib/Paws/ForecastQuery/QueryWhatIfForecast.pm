
package Paws::ForecastQuery::QueryWhatIfForecast;
  use Moose;
  has EndDate => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::ForecastQuery::Filters', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');
  has WhatIfForecastArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'QueryWhatIfForecast');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ForecastQuery::QueryWhatIfForecastResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ForecastQuery::QueryWhatIfForecast - Arguments for method QueryWhatIfForecast on L<Paws::ForecastQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method QueryWhatIfForecast on the
L<Amazon Forecast Query Service|Paws::ForecastQuery> service. Use the attributes of this class
as arguments to method QueryWhatIfForecast.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to QueryWhatIfForecast.

=head1 SYNOPSIS

    my $forecastquery = Paws->service('ForecastQuery');
    my $QueryWhatIfForecastResponse = $forecastquery->QueryWhatIfForecast(
      Filters => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: max: 256, value: max: 256
      },
      WhatIfForecastArn => 'MyLongArn',
      EndDate           => 'MyDateTime',     # OPTIONAL
      NextToken         => 'MyNextToken',    # OPTIONAL
      StartDate         => 'MyDateTime',     # OPTIONAL
    );

    # Results:
    my $Forecast = $QueryWhatIfForecastResponse->Forecast;

    # Returns a L<Paws::ForecastQuery::QueryWhatIfForecastResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecastquery/QueryWhatIfForecast>

=head1 ATTRIBUTES


=head2 EndDate => Str

The end date for the what-if forecast. Specify the date using this
format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example,
2015-01-01T20:00:00.



=head2 B<REQUIRED> Filters => L<Paws::ForecastQuery::Filters>

The filtering criteria to apply when retrieving the forecast. For
example, to get the forecast for C<client_21> in the electricity usage
dataset, specify the following:

C<{"item_id" : "client_21"}>

To get the full what-if forecast, use the CreateForecastExportJob
(https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateWhatIfForecastExport.html)
operation.



=head2 NextToken => Str

If the result of the previous request was truncated, the response
includes a C<NextToken>. To retrieve the next set of results, use the
token in the next request. Tokens expire after 24 hours.



=head2 StartDate => Str

The start date for the what-if forecast. Specify the date using this
format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example,
2015-01-01T08:00:00.



=head2 B<REQUIRED> WhatIfForecastArn => Str

The Amazon Resource Name (ARN) of the what-if forecast to query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method QueryWhatIfForecast in L<Paws::ForecastQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

