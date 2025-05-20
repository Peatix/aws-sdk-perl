
package Paws::B2bi::GetCapability;
  use Moose;
  has CapabilityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capabilityId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCapability');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::GetCapabilityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::GetCapability - Arguments for method GetCapability on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCapability on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method GetCapability.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCapability.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $GetCapabilityResponse = $b2bi->GetCapability(
      CapabilityId => 'MyCapabilityId',

    );

    # Results:
    my $CapabilityArn         = $GetCapabilityResponse->CapabilityArn;
    my $CapabilityId          = $GetCapabilityResponse->CapabilityId;
    my $Configuration         = $GetCapabilityResponse->Configuration;
    my $CreatedAt             = $GetCapabilityResponse->CreatedAt;
    my $InstructionsDocuments = $GetCapabilityResponse->InstructionsDocuments;
    my $ModifiedAt            = $GetCapabilityResponse->ModifiedAt;
    my $Name                  = $GetCapabilityResponse->Name;
    my $Type                  = $GetCapabilityResponse->Type;

    # Returns a L<Paws::B2bi::GetCapabilityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/GetCapability>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapabilityId => Str

Specifies a system-assigned unique identifier for the capability.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCapability in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

