
package Paws::IoTFleetWise::CreateModelManifest;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Nodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'nodes' , required => 1);
  has SignalCatalogArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signalCatalogArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateModelManifest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::CreateModelManifestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::CreateModelManifest - Arguments for method CreateModelManifest on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateModelManifest on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method CreateModelManifest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateModelManifest.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $CreateModelManifestResponse = $iotfleetwise->CreateModelManifest(
      Name             => 'MyresourceName',
      Nodes            => [ 'Mystring', ... ],
      SignalCatalogArn => 'Myarn',
      Description      => 'Mydescription',       # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn  = $CreateModelManifestResponse->Arn;
    my $Name = $CreateModelManifestResponse->Name;

    # Returns a L<Paws::IoTFleetWise::CreateModelManifestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/CreateModelManifest>

=head1 ATTRIBUTES


=head2 Description => Str

A brief description of the vehicle model.



=head2 B<REQUIRED> Name => Str

The name of the vehicle model to create.



=head2 B<REQUIRED> Nodes => ArrayRef[Str|Undef]

A list of nodes, which are a general abstraction of signals.



=head2 B<REQUIRED> SignalCatalogArn => Str

The Amazon Resource Name (ARN) of a signal catalog.



=head2 Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]

Metadata that can be used to manage the vehicle model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateModelManifest in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

