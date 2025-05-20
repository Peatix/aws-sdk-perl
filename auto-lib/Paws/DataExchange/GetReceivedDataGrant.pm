
package Paws::DataExchange::GetReceivedDataGrant;
  use Moose;
  has DataGrantArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataGrantArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReceivedDataGrant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/received-data-grants/{DataGrantArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::GetReceivedDataGrantResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::GetReceivedDataGrant - Arguments for method GetReceivedDataGrant on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReceivedDataGrant on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method GetReceivedDataGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReceivedDataGrant.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $GetReceivedDataGrantResponse = $dataexchange->GetReceivedDataGrant(
      DataGrantArn => 'MyDataGrantArn',

    );

    # Results:
    my $AcceptanceState = $GetReceivedDataGrantResponse->AcceptanceState;
    my $AcceptedAt      = $GetReceivedDataGrantResponse->AcceptedAt;
    my $Arn             = $GetReceivedDataGrantResponse->Arn;
    my $CreatedAt       = $GetReceivedDataGrantResponse->CreatedAt;
    my $DataSetId       = $GetReceivedDataGrantResponse->DataSetId;
    my $Description     = $GetReceivedDataGrantResponse->Description;
    my $EndsAt          = $GetReceivedDataGrantResponse->EndsAt;
    my $GrantDistributionScope =
      $GetReceivedDataGrantResponse->GrantDistributionScope;
    my $Id                = $GetReceivedDataGrantResponse->Id;
    my $Name              = $GetReceivedDataGrantResponse->Name;
    my $ReceiverPrincipal = $GetReceivedDataGrantResponse->ReceiverPrincipal;
    my $SenderPrincipal   = $GetReceivedDataGrantResponse->SenderPrincipal;
    my $UpdatedAt         = $GetReceivedDataGrantResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::GetReceivedDataGrantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/GetReceivedDataGrant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataGrantArn => Str

The Amazon Resource Name (ARN) of the data grant.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReceivedDataGrant in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

