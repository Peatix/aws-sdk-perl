
package Paws::AppFabric::GetIngestionDestination;
  use Moose;
  has AppBundleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appBundleIdentifier', required => 1);
  has IngestionDestinationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ingestionDestinationIdentifier', required => 1);
  has IngestionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ingestionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIngestionDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppFabric::GetIngestionDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::GetIngestionDestination - Arguments for method GetIngestionDestination on L<Paws::AppFabric>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIngestionDestination on the
L<AppFabric|Paws::AppFabric> service. Use the attributes of this class
as arguments to method GetIngestionDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIngestionDestination.

=head1 SYNOPSIS

    my $appfabric = Paws->service('AppFabric');
    my $GetIngestionDestinationResponse = $appfabric->GetIngestionDestination(
      AppBundleIdentifier            => 'MyIdentifier',
      IngestionDestinationIdentifier => 'MyIdentifier',
      IngestionIdentifier            => 'MyIdentifier',

    );

    # Results:
    my $IngestionDestination =
      $GetIngestionDestinationResponse->IngestionDestination;

    # Returns a L<Paws::AppFabric::GetIngestionDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric/GetIngestionDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppBundleIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app bundle to use for the request.



=head2 B<REQUIRED> IngestionDestinationIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the ingestion destination to use for the request.



=head2 B<REQUIRED> IngestionIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the ingestion to use for the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIngestionDestination in L<Paws::AppFabric>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

