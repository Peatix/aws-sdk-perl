
package Paws::B2bi::CreatePartnership;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capabilities' , required => 1);
  has CapabilityOptions => (is => 'ro', isa => 'Paws::B2bi::CapabilityOptions', traits => ['NameInRequest'], request_name => 'capabilityOptions' );
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Email => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'email' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Phone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'phone' );
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileId' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::B2bi::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePartnership');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::CreatePartnershipResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::CreatePartnership - Arguments for method CreatePartnership on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePartnership on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method CreatePartnership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePartnership.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $CreatePartnershipResponse = $b2bi->CreatePartnership(
      Capabilities => [
        'MyCapabilityId', ...    # min: 1, max: 64
      ],
      Email             => 'MyEmail',
      Name              => 'MyPartnerName',
      ProfileId         => 'MyProfileId',
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
      ClientToken => 'MyString',    # OPTIONAL
      Phone       => 'MyPhone',     # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Capabilities      = $CreatePartnershipResponse->Capabilities;
    my $CapabilityOptions = $CreatePartnershipResponse->CapabilityOptions;
    my $CreatedAt         = $CreatePartnershipResponse->CreatedAt;
    my $Email             = $CreatePartnershipResponse->Email;
    my $Name              = $CreatePartnershipResponse->Name;
    my $PartnershipArn    = $CreatePartnershipResponse->PartnershipArn;
    my $PartnershipId     = $CreatePartnershipResponse->PartnershipId;
    my $Phone             = $CreatePartnershipResponse->Phone;
    my $ProfileId         = $CreatePartnershipResponse->ProfileId;
    my $TradingPartnerId  = $CreatePartnershipResponse->TradingPartnerId;

    # Returns a L<Paws::B2bi::CreatePartnershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/CreatePartnership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Capabilities => ArrayRef[Str|Undef]

Specifies a list of the capabilities associated with this partnership.



=head2 CapabilityOptions => L<Paws::B2bi::CapabilityOptions>

Specify the structure that contains the details for the associated
capabilities.



=head2 ClientToken => Str

Reserved for future use.



=head2 B<REQUIRED> Email => Str

Specifies the email address associated with this trading partner.



=head2 B<REQUIRED> Name => Str

Specifies a descriptive name for the partnership.



=head2 Phone => Str

Specifies the phone number associated with the partnership.



=head2 B<REQUIRED> ProfileId => Str

Specifies the unique, system-generated identifier for the profile
connected to this partnership.



=head2 Tags => ArrayRef[L<Paws::B2bi::Tag>]

Specifies the key-value pairs assigned to ARNs that you can use to
group and search for resources by type. You can attach this metadata to
resources (capabilities, partnerships, and so on) for any purpose.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePartnership in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

