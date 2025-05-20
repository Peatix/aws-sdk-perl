
package Paws::AppFabric::GetIngestion;
  use Moose;
  has AppBundleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appBundleIdentifier', required => 1);
  has IngestionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ingestionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIngestion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppFabric::GetIngestionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::GetIngestion - Arguments for method GetIngestion on L<Paws::AppFabric>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIngestion on the
L<AppFabric|Paws::AppFabric> service. Use the attributes of this class
as arguments to method GetIngestion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIngestion.

=head1 SYNOPSIS

    my $appfabric = Paws->service('AppFabric');
    my $GetIngestionResponse = $appfabric->GetIngestion(
      AppBundleIdentifier => 'MyIdentifier',
      IngestionIdentifier => 'MyIdentifier',

    );

    # Results:
    my $Ingestion = $GetIngestionResponse->Ingestion;

    # Returns a L<Paws::AppFabric::GetIngestionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric/GetIngestion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppBundleIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app bundle to use for the request.



=head2 B<REQUIRED> IngestionIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the ingestion to use for the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIngestion in L<Paws::AppFabric>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

