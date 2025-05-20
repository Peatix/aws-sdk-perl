
package Paws::Lambda::ListLayerVersions;
  use Moose;
  has CompatibleArchitecture => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'CompatibleArchitecture');
  has CompatibleRuntime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'CompatibleRuntime');
  has LayerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LayerName', required => 1);
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker');
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxItems');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLayerVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-10-31/layers/{LayerName}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::ListLayerVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListLayerVersions - Arguments for method ListLayerVersions on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLayerVersions on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method ListLayerVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLayerVersions.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
   # To list versions of a layer
   # The following example displays information about the versions for the layer
   # named blank-java-lib
    my $ListLayerVersionsResponse =
      $lambda->ListLayerVersions( 'LayerName' => 'blank-java-lib' );

    # Results:
    my $LayerVersions = $ListLayerVersionsResponse->LayerVersions;

    # Returns a L<Paws::Lambda::ListLayerVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/ListLayerVersions>

=head1 ATTRIBUTES


=head2 CompatibleArchitecture => Str

The compatible instruction set architecture
(https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html).

Valid values are: C<"x86_64">, C<"arm64">

=head2 CompatibleRuntime => Str

A runtime identifier.

The following list includes deprecated runtimes. For more information,
see Runtime use after deprecation
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-deprecation-levels).

For a list of all currently supported runtimes, see Supported runtimes
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtimes-supported).

Valid values are: C<"nodejs">, C<"nodejs4.3">, C<"nodejs6.10">, C<"nodejs8.10">, C<"nodejs10.x">, C<"nodejs12.x">, C<"nodejs14.x">, C<"nodejs16.x">, C<"java8">, C<"java8.al2">, C<"java11">, C<"python2.7">, C<"python3.6">, C<"python3.7">, C<"python3.8">, C<"python3.9">, C<"dotnetcore1.0">, C<"dotnetcore2.0">, C<"dotnetcore2.1">, C<"dotnetcore3.1">, C<"dotnet6">, C<"dotnet8">, C<"nodejs4.3-edge">, C<"go1.x">, C<"ruby2.5">, C<"ruby2.7">, C<"provided">, C<"provided.al2">, C<"nodejs18.x">, C<"python3.10">, C<"java17">, C<"ruby3.2">, C<"ruby3.3">, C<"ruby3.4">, C<"python3.11">, C<"nodejs20.x">, C<"provided.al2023">, C<"python3.12">, C<"java21">, C<"python3.13">, C<"nodejs22.x">

=head2 B<REQUIRED> LayerName => Str

The name or Amazon Resource Name (ARN) of the layer.



=head2 Marker => Str

A pagination token returned by a previous call.



=head2 MaxItems => Int

The maximum number of versions to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLayerVersions in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

