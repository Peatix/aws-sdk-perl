
package Paws::B2bi::GetPartnership;
  use Moose;
  has PartnershipId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'partnershipId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPartnership');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::GetPartnershipResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::GetPartnership - Arguments for method GetPartnership on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPartnership on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method GetPartnership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPartnership.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $GetPartnershipResponse = $b2bi->GetPartnership(
      PartnershipId => 'MyPartnershipId',

    );

    # Results:
    my $Capabilities      = $GetPartnershipResponse->Capabilities;
    my $CapabilityOptions = $GetPartnershipResponse->CapabilityOptions;
    my $CreatedAt         = $GetPartnershipResponse->CreatedAt;
    my $Email             = $GetPartnershipResponse->Email;
    my $ModifiedAt        = $GetPartnershipResponse->ModifiedAt;
    my $Name              = $GetPartnershipResponse->Name;
    my $PartnershipArn    = $GetPartnershipResponse->PartnershipArn;
    my $PartnershipId     = $GetPartnershipResponse->PartnershipId;
    my $Phone             = $GetPartnershipResponse->Phone;
    my $ProfileId         = $GetPartnershipResponse->ProfileId;
    my $TradingPartnerId  = $GetPartnershipResponse->TradingPartnerId;

    # Returns a L<Paws::B2bi::GetPartnershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/GetPartnership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PartnershipId => Str

Specifies the unique, system-generated identifier for a partnership.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPartnership in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

