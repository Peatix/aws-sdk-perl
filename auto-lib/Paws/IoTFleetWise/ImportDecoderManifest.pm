
package Paws::IoTFleetWise::ImportDecoderManifest;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has NetworkFileDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::NetworkFileDefinition]', traits => ['NameInRequest'], request_name => 'networkFileDefinitions' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportDecoderManifest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::ImportDecoderManifestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ImportDecoderManifest - Arguments for method ImportDecoderManifest on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportDecoderManifest on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method ImportDecoderManifest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportDecoderManifest.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $ImportDecoderManifestResponse = $iotfleetwise->ImportDecoderManifest(
      Name                   => 'MyresourceName',
      NetworkFileDefinitions => [
        {
          CanDbc => {
            CanDbcFiles => [
              'BlobNetworkFileBlob', ...    # max: 200000000
            ],    # min: 1, max: 5
            NetworkInterface => 'MyInterfaceId',               # min: 1, max: 50
            SignalsMap       => { 'Mystring' => 'Mystring', }, # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Arn  = $ImportDecoderManifestResponse->Arn;
    my $Name = $ImportDecoderManifestResponse->Name;

    # Returns a L<Paws::IoTFleetWise::ImportDecoderManifestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/ImportDecoderManifest>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the decoder manifest to import.



=head2 B<REQUIRED> NetworkFileDefinitions => ArrayRef[L<Paws::IoTFleetWise::NetworkFileDefinition>]

The file to load into an Amazon Web Services account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportDecoderManifest in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

