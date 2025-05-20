
package Paws::Connect::ListViews;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListViews');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/views/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListViewsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListViews - Arguments for method ListViews on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListViews on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListViews.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListViews.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListViewsResponse = $connect->ListViews(
      InstanceId => 'MyViewsInstanceId',
      MaxResults => 1,                     # OPTIONAL
      NextToken  => 'MyViewsNextToken',    # OPTIONAL
      Type       => 'CUSTOMER_MANAGED',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListViewsResponse->NextToken;
    my $ViewsSummaryList = $ListViewsResponse->ViewsSummaryList;

    # Returns a L<Paws::Connect::ListViewsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListViews>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page. The default MaxResult
size is 100.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 Type => Str

The type of the view.

Valid values are: C<"CUSTOMER_MANAGED">, C<"AWS_MANAGED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListViews in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

