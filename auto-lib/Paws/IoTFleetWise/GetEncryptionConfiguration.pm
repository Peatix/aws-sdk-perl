
package Paws::IoTFleetWise::GetEncryptionConfiguration;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEncryptionConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::GetEncryptionConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetEncryptionConfiguration - Arguments for method GetEncryptionConfiguration on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEncryptionConfiguration on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method GetEncryptionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEncryptionConfiguration.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $GetEncryptionConfigurationResponse =
      $iotfleetwise->GetEncryptionConfiguration();

    # Results:
    my $CreationTime = $GetEncryptionConfigurationResponse->CreationTime;
    my $EncryptionStatus =
      $GetEncryptionConfigurationResponse->EncryptionStatus;
    my $EncryptionType = $GetEncryptionConfigurationResponse->EncryptionType;
    my $ErrorMessage   = $GetEncryptionConfigurationResponse->ErrorMessage;
    my $KmsKeyId       = $GetEncryptionConfigurationResponse->KmsKeyId;
    my $LastModificationTime =
      $GetEncryptionConfigurationResponse->LastModificationTime;

   # Returns a L<Paws::IoTFleetWise::GetEncryptionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/GetEncryptionConfiguration>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEncryptionConfiguration in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

