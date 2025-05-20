
package Paws::DataExchange::ListReceivedDataGrants;
  use Moose;
  has AcceptanceState => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'acceptanceState');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReceivedDataGrants');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/received-data-grants');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::ListReceivedDataGrantsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListReceivedDataGrants - Arguments for method ListReceivedDataGrants on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReceivedDataGrants on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method ListReceivedDataGrants.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReceivedDataGrants.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $ListReceivedDataGrantsResponse = $dataexchange->ListReceivedDataGrants(
      AcceptanceState => [
        'PENDING_RECEIVER_ACCEPTANCE',
        ...    # values: PENDING_RECEIVER_ACCEPTANCE, ACCEPTED
      ],    # OPTIONAL
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $DataGrantSummaries =
      $ListReceivedDataGrantsResponse->DataGrantSummaries;
    my $NextToken = $ListReceivedDataGrantsResponse->NextToken;

    # Returns a L<Paws::DataExchange::ListReceivedDataGrantsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/ListReceivedDataGrants>

=head1 ATTRIBUTES


=head2 AcceptanceState => ArrayRef[Str|Undef]

The acceptance state of the data grants to list.



=head2 MaxResults => Int

The maximum number of results to be included in the next page.



=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReceivedDataGrants in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

