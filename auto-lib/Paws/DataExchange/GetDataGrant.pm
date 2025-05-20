
package Paws::DataExchange::GetDataGrant;
  use Moose;
  has DataGrantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataGrantId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataGrant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/data-grants/{DataGrantId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::GetDataGrantResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::GetDataGrant - Arguments for method GetDataGrant on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataGrant on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method GetDataGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataGrant.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $GetDataGrantResponse = $dataexchange->GetDataGrant(
      DataGrantId => 'MyDataGrantId',

    );

    # Results:
    my $AcceptanceState        = $GetDataGrantResponse->AcceptanceState;
    my $AcceptedAt             = $GetDataGrantResponse->AcceptedAt;
    my $Arn                    = $GetDataGrantResponse->Arn;
    my $CreatedAt              = $GetDataGrantResponse->CreatedAt;
    my $DataSetId              = $GetDataGrantResponse->DataSetId;
    my $Description            = $GetDataGrantResponse->Description;
    my $EndsAt                 = $GetDataGrantResponse->EndsAt;
    my $GrantDistributionScope = $GetDataGrantResponse->GrantDistributionScope;
    my $Id                     = $GetDataGrantResponse->Id;
    my $Name                   = $GetDataGrantResponse->Name;
    my $ReceiverPrincipal      = $GetDataGrantResponse->ReceiverPrincipal;
    my $SenderPrincipal        = $GetDataGrantResponse->SenderPrincipal;
    my $SourceDataSetId        = $GetDataGrantResponse->SourceDataSetId;
    my $Tags                   = $GetDataGrantResponse->Tags;
    my $UpdatedAt              = $GetDataGrantResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::GetDataGrantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/GetDataGrant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataGrantId => Str

The ID of the data grant.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataGrant in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

