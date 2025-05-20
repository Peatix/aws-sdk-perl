
package Paws::IoTFleetWise::GetRegisterAccountStatus;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRegisterAccountStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::GetRegisterAccountStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetRegisterAccountStatus - Arguments for method GetRegisterAccountStatus on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRegisterAccountStatus on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method GetRegisterAccountStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRegisterAccountStatus.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $GetRegisterAccountStatusResponse =
      $iotfleetwise->GetRegisterAccountStatus();

    # Results:
    my $AccountStatus = $GetRegisterAccountStatusResponse->AccountStatus;
    my $CreationTime  = $GetRegisterAccountStatusResponse->CreationTime;
    my $CustomerAccountId =
      $GetRegisterAccountStatusResponse->CustomerAccountId;
    my $IamRegistrationResponse =
      $GetRegisterAccountStatusResponse->IamRegistrationResponse;
    my $LastModificationTime =
      $GetRegisterAccountStatusResponse->LastModificationTime;
    my $TimestreamRegistrationResponse =
      $GetRegisterAccountStatusResponse->TimestreamRegistrationResponse;

    # Returns a L<Paws::IoTFleetWise::GetRegisterAccountStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/GetRegisterAccountStatus>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRegisterAccountStatus in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

