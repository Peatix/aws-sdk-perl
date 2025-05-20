
package Paws::SageMakerGeospatial::GetTile;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Arn', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ExecutionRoleArn');
  has ImageAssets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'ImageAssets', required => 1);
  has ImageMask => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'ImageMask');
  has OutputDataType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'OutputDataType');
  has OutputFormat => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'OutputFormat');
  has PropertyFilters => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'PropertyFilters');
  has Target => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Target', required => 1);
  has TimeRangeFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'TimeRangeFilter');
  has X => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'x', required => 1);
  has Y => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'y', required => 1);
  has Z => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'z', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tile/{z}/{x}/{y}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::GetTileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::GetTile - Arguments for method GetTile on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTile on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method GetTile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTile.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $GetTileOutput = $sagemaker -geospatial->GetTile(
      Arn              => 'MyEarthObservationJobArn',
      ImageAssets      => [ 'MyString', ... ],
      Target           => 'INPUT',
      X                => 1,
      Y                => 1,
      Z                => 1,
      ExecutionRoleArn => 'MyExecutionRoleArn',         # OPTIONAL
      ImageMask        => 1,                            # OPTIONAL
      OutputDataType   => 'INT32',                      # OPTIONAL
      OutputFormat     => 'MyString',                   # OPTIONAL
      PropertyFilters  => 'MyString',                   # OPTIONAL
      TimeRangeFilter  => 'MyString',                   # OPTIONAL
    );

    # Results:
    my $BinaryFile = $GetTileOutput->BinaryFile;

    # Returns a L<Paws::SageMakerGeospatial::GetTileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/GetTile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the tile operation.



=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you specify.



=head2 B<REQUIRED> ImageAssets => ArrayRef[Str|Undef]

The particular assets or bands to tile.



=head2 ImageMask => Bool

Determines whether or not to return a valid data mask.



=head2 OutputDataType => Str

The output data type of the tile operation.

Valid values are: C<"INT32">, C<"FLOAT32">, C<"INT16">, C<"FLOAT64">, C<"UINT16">

=head2 OutputFormat => Str

The data format of the output tile. The formats include .npy, .png and
.jpg.



=head2 PropertyFilters => Str

Property filters for the imagery to tile.



=head2 B<REQUIRED> Target => Str

Determines what part of the Earth Observation job to tile. 'INPUT' or
'OUTPUT' are the valid options.

Valid values are: C<"INPUT">, C<"OUTPUT">

=head2 TimeRangeFilter => Str

Time range filter applied to imagery to find the images to tile.



=head2 B<REQUIRED> X => Int

The x coordinate of the tile input.



=head2 B<REQUIRED> Y => Int

The y coordinate of the tile input.



=head2 B<REQUIRED> Z => Int

The z coordinate of the tile input.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTile in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

