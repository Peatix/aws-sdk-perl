
package Paws::IoTFleetWise::ImportSignalCatalog;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has Vss => (is => 'ro', isa => 'Paws::IoTFleetWise::FormattedVss', traits => ['NameInRequest'], request_name => 'vss' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportSignalCatalog');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::ImportSignalCatalogResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ImportSignalCatalog - Arguments for method ImportSignalCatalog on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportSignalCatalog on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method ImportSignalCatalog.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportSignalCatalog.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $ImportSignalCatalogResponse = $iotfleetwise->ImportSignalCatalog(
      Name        => 'MyresourceName',
      Description => 'Mydescription',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      Vss => {
        VssJson => 'MyString',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn  = $ImportSignalCatalogResponse->Arn;
    my $Name = $ImportSignalCatalogResponse->Name;

    # Returns a L<Paws::IoTFleetWise::ImportSignalCatalogResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/ImportSignalCatalog>

=head1 ATTRIBUTES


=head2 Description => Str

A brief description of the signal catalog.



=head2 B<REQUIRED> Name => Str

The name of the signal catalog to import.



=head2 Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]

Metadata that can be used to manage the signal catalog.



=head2 Vss => L<Paws::IoTFleetWise::FormattedVss>

The contents of the Vehicle Signal Specification (VSS) configuration.
VSS is a precise language used to describe and model signals in vehicle
networks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportSignalCatalog in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

