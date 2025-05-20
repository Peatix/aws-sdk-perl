
package Paws::MWAA::InvokeRestApi;
  use Moose;
  has Body => (is => 'ro', isa => 'Paws::MWAA::RestApiRequestBody');
  has Method => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has QueryParameters => (is => 'ro', isa => 'Paws::MWAA::Document');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeRestApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapi/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MWAA::InvokeRestApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::InvokeRestApi - Arguments for method InvokeRestApi on L<Paws::MWAA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeRestApi on the
L<AmazonMWAA|Paws::MWAA> service. Use the attributes of this class
as arguments to method InvokeRestApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeRestApi.

=head1 SYNOPSIS

    my $airflow = Paws->service('MWAA');
    my $InvokeRestApiResponse = $airflow->InvokeRestApi(
      Method => 'GET',
      Name   => 'MyEnvironmentName',
      Path   => 'MyRestApiPath',
      Body   => {

      },    # OPTIONAL
      QueryParameters => {

      },    # OPTIONAL
    );

    # Results:
    my $RestApiResponse   = $InvokeRestApiResponse->RestApiResponse;
    my $RestApiStatusCode = $InvokeRestApiResponse->RestApiStatusCode;

    # Returns a L<Paws::MWAA::InvokeRestApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/airflow/InvokeRestApi>

=head1 ATTRIBUTES


=head2 Body => L<Paws::MWAA::RestApiRequestBody>

The request body for the Apache Airflow REST API call, provided as a
JSON object.



=head2 B<REQUIRED> Method => Str

The HTTP method used for making Airflow REST API calls. For example,
C<POST>.

Valid values are: C<"GET">, C<"PUT">, C<"POST">, C<"PATCH">, C<"DELETE">

=head2 B<REQUIRED> Name => Str

The name of the Amazon MWAA environment. For example,
C<MyMWAAEnvironment>.



=head2 B<REQUIRED> Path => Str

The Apache Airflow REST API endpoint path to be called. For example,
C</dags/123456/clearTaskInstances>. For more information, see Apache
Airflow API
(https://airflow.apache.org/docs/apache-airflow/stable/stable-rest-api-ref.html)



=head2 QueryParameters => L<Paws::MWAA::Document>

Query parameters to be included in the Apache Airflow REST API call,
provided as a JSON object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeRestApi in L<Paws::MWAA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

