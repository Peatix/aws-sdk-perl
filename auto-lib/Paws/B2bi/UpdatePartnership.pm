
package Paws::B2bi::UpdatePartnership;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capabilities' );
  has CapabilityOptions => (is => 'ro', isa => 'Paws::B2bi::CapabilityOptions', traits => ['NameInRequest'], request_name => 'capabilityOptions' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has PartnershipId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'partnershipId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePartnership');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::UpdatePartnershipResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::UpdatePartnership - Arguments for method UpdatePartnership on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePartnership on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method UpdatePartnership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePartnership.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $UpdatePartnershipResponse = $b2bi->UpdatePartnership(
      PartnershipId => 'MyPartnershipId',
      Capabilities  => [
        'MyCapabilityId', ...    # min: 1, max: 64
      ],    # OPTIONAL
      CapabilityOptions => {
        OutboundEdi => {
          X12 => {
            Common => {
              Delimiters => {
                ComponentSeparator =>
                  'MyX12ComponentSeparator',    # min: 1, max: 1; OPTIONAL
                DataElementSeparator =>
                  'MyX12DataElementSeparator',    # min: 1, max: 1; OPTIONAL
                SegmentTerminator =>
                  'MyX12SegmentTerminator',       # min: 1, max: 1; OPTIONAL
              },    # OPTIONAL
              FunctionalGroupHeaders => {
                ApplicationReceiverCode =>
                  'MyX12ApplicationReceiverCode',    # min: 2, max: 15; OPTIONAL
                ApplicationSenderCode =>
                  'MyX12ApplicationSenderCode',      # min: 2, max: 15; OPTIONAL
                ResponsibleAgencyCode =>
                  'MyX12ResponsibleAgencyCode',      # min: 1, max: 2; OPTIONAL
              },    # OPTIONAL
              InterchangeControlHeaders => {
                AcknowledgmentRequestedCode =>
                  'MyX12AcknowledgmentRequestedCode', # min: 1, max: 1; OPTIONAL
                ReceiverId => 'MyX12ReceiverId',    # min: 15, max: 15; OPTIONAL
                ReceiverIdQualifier =>
                  'MyX12IdQualifier',               # min: 2, max: 2; OPTIONAL
                RepetitionSeparator =>
                  'MyX12RepetitionSeparator',       # min: 1, max: 1; OPTIONAL
                SenderId => 'MyX12SenderId',        # min: 15, max: 15; OPTIONAL
                SenderIdQualifier =>
                  'MyX12IdQualifier',               # min: 2, max: 2; OPTIONAL
                UsageIndicatorCode =>
                  'MyX12UsageIndicatorCode',        # min: 1, max: 1; OPTIONAL
              },    # OPTIONAL
              ValidateEdi => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Name => 'MyPartnerName',    # OPTIONAL
    );

    # Results:
    my $Capabilities      = $UpdatePartnershipResponse->Capabilities;
    my $CapabilityOptions = $UpdatePartnershipResponse->CapabilityOptions;
    my $CreatedAt         = $UpdatePartnershipResponse->CreatedAt;
    my $Email             = $UpdatePartnershipResponse->Email;
    my $ModifiedAt        = $UpdatePartnershipResponse->ModifiedAt;
    my $Name              = $UpdatePartnershipResponse->Name;
    my $PartnershipArn    = $UpdatePartnershipResponse->PartnershipArn;
    my $PartnershipId     = $UpdatePartnershipResponse->PartnershipId;
    my $Phone             = $UpdatePartnershipResponse->Phone;
    my $ProfileId         = $UpdatePartnershipResponse->ProfileId;
    my $TradingPartnerId  = $UpdatePartnershipResponse->TradingPartnerId;

    # Returns a L<Paws::B2bi::UpdatePartnershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/UpdatePartnership>

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

List of the capabilities associated with this partnership.



=head2 CapabilityOptions => L<Paws::B2bi::CapabilityOptions>

To update, specify the structure that contains the details for the
associated capabilities.



=head2 Name => Str

The name of the partnership, used to identify it.



=head2 B<REQUIRED> PartnershipId => Str

Specifies the unique, system-generated identifier for a partnership.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePartnership in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

