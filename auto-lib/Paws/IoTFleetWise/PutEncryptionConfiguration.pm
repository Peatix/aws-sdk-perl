
package Paws::IoTFleetWise::PutEncryptionConfiguration;
  use Moose;
  has EncryptionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionType' , required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEncryptionConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::PutEncryptionConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::PutEncryptionConfiguration - Arguments for method PutEncryptionConfiguration on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEncryptionConfiguration on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method PutEncryptionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEncryptionConfiguration.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $PutEncryptionConfigurationResponse =
      $iotfleetwise->PutEncryptionConfiguration(
      EncryptionType => 'KMS_BASED_ENCRYPTION',
      KmsKeyId       =>
        'MyPutEncryptionConfigurationRequestKmsKeyIdString',    # OPTIONAL
      );

    # Results:
    my $EncryptionStatus =
      $PutEncryptionConfigurationResponse->EncryptionStatus;
    my $EncryptionType = $PutEncryptionConfigurationResponse->EncryptionType;
    my $KmsKeyId       = $PutEncryptionConfigurationResponse->KmsKeyId;

   # Returns a L<Paws::IoTFleetWise::PutEncryptionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/PutEncryptionConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionType => Str

The type of encryption. Choose C<KMS_BASED_ENCRYPTION> to use a KMS key
or C<FLEETWISE_DEFAULT_ENCRYPTION> to use an Amazon Web Services
managed key.

Valid values are: C<"KMS_BASED_ENCRYPTION">, C<"FLEETWISE_DEFAULT_ENCRYPTION">

=head2 KmsKeyId => Str

The ID of the KMS key that is used for encryption.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEncryptionConfiguration in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

