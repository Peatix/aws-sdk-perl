
package Paws::DataExchange::CreateDataGrant;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EndsAt => (is => 'ro', isa => 'Str');
  has GrantDistributionScope => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ReceiverPrincipal => (is => 'ro', isa => 'Str', required => 1);
  has SourceDataSetId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::DataExchange::MapOf__string');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataGrant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/data-grants');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::CreateDataGrantResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::CreateDataGrant - Arguments for method CreateDataGrant on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataGrant on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method CreateDataGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataGrant.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $CreateDataGrantResponse = $dataexchange->CreateDataGrant(
      GrantDistributionScope => 'AWS_ORGANIZATION',
      Name                   => 'MyDataGrantName',
      ReceiverPrincipal      => 'MyReceiverPrincipal',
      SourceDataSetId        => 'MyId',
      Description            => 'MyDescription',                      # OPTIONAL
      EndsAt                 => '1970-01-01T01:00:00',                # OPTIONAL
      Tags                   => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $AcceptanceState = $CreateDataGrantResponse->AcceptanceState;
    my $AcceptedAt      = $CreateDataGrantResponse->AcceptedAt;
    my $Arn             = $CreateDataGrantResponse->Arn;
    my $CreatedAt       = $CreateDataGrantResponse->CreatedAt;
    my $DataSetId       = $CreateDataGrantResponse->DataSetId;
    my $Description     = $CreateDataGrantResponse->Description;
    my $EndsAt          = $CreateDataGrantResponse->EndsAt;
    my $GrantDistributionScope =
      $CreateDataGrantResponse->GrantDistributionScope;
    my $Id                = $CreateDataGrantResponse->Id;
    my $Name              = $CreateDataGrantResponse->Name;
    my $ReceiverPrincipal = $CreateDataGrantResponse->ReceiverPrincipal;
    my $SenderPrincipal   = $CreateDataGrantResponse->SenderPrincipal;
    my $SourceDataSetId   = $CreateDataGrantResponse->SourceDataSetId;
    my $Tags              = $CreateDataGrantResponse->Tags;
    my $UpdatedAt         = $CreateDataGrantResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::CreateDataGrantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/CreateDataGrant>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the data grant.



=head2 EndsAt => Str

The timestamp of when access to the associated data set ends.



=head2 B<REQUIRED> GrantDistributionScope => Str

The distribution scope of the data grant.

Valid values are: C<"AWS_ORGANIZATION">, C<"NONE">

=head2 B<REQUIRED> Name => Str

The name of the data grant.



=head2 B<REQUIRED> ReceiverPrincipal => Str

The Amazon Web Services account ID of the data grant receiver.



=head2 B<REQUIRED> SourceDataSetId => Str

The ID of the data set used to create the data grant.



=head2 Tags => L<Paws::DataExchange::MapOf__string>

The tags to add to the data grant. A tag is a key-value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataGrant in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

