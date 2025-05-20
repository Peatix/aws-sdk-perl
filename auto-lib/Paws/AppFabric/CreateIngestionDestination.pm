
package Paws::AppFabric::CreateIngestionDestination;
  use Moose;
  has AppBundleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appBundleIdentifier', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DestinationConfiguration => (is => 'ro', isa => 'Paws::AppFabric::DestinationConfiguration', traits => ['NameInRequest'], request_name => 'destinationConfiguration', required => 1);
  has IngestionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ingestionIdentifier', required => 1);
  has ProcessingConfiguration => (is => 'ro', isa => 'Paws::AppFabric::ProcessingConfiguration', traits => ['NameInRequest'], request_name => 'processingConfiguration', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppFabric::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIngestionDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppFabric::CreateIngestionDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::CreateIngestionDestination - Arguments for method CreateIngestionDestination on L<Paws::AppFabric>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIngestionDestination on the
L<AppFabric|Paws::AppFabric> service. Use the attributes of this class
as arguments to method CreateIngestionDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIngestionDestination.

=head1 SYNOPSIS

    my $appfabric = Paws->service('AppFabric');
    my $CreateIngestionDestinationResponse =
      $appfabric->CreateIngestionDestination(
      AppBundleIdentifier      => 'MyIdentifier',
      DestinationConfiguration => {
        AuditLog => {
          Destination => {
            FirehoseStream => {
              StreamName => 'MyString64',    # min: 3, max: 64

            },    # OPTIONAL
            S3Bucket => {
              BucketName => 'MyString63',     # min: 3, max: 63
              Prefix     => 'MyString120',    # min: 1, max: 120; OPTIONAL
            },    # OPTIONAL
          },

        },    # OPTIONAL
      },
      IngestionIdentifier     => 'MyIdentifier',
      ProcessingConfiguration => {
        AuditLog => {
          Format => 'json',    # values: json, parquet
          Schema => 'ocsf',    # values: ocsf, raw

        },    # OPTIONAL
      },
      ClientToken => 'MyUUID',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $IngestionDestination =
      $CreateIngestionDestinationResponse->IngestionDestination;

    # Returns a L<Paws::AppFabric::CreateIngestionDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric/CreateIngestionDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppBundleIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app bundle to use for the request.



=head2 ClientToken => Str

Specifies a unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. This lets you safely retry the
request without accidentally performing the same operation a second
time. Passing the same value to a later call to an operation requires
that you also pass the same value for all other parameters. We
recommend that you use a UUID type of value
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an
C<IdempotentParameterMismatch> error.



=head2 B<REQUIRED> DestinationConfiguration => L<Paws::AppFabric::DestinationConfiguration>

Contains information about the destination of ingested data.



=head2 B<REQUIRED> IngestionIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the ingestion to use for the request.



=head2 B<REQUIRED> ProcessingConfiguration => L<Paws::AppFabric::ProcessingConfiguration>

Contains information about how ingested data is processed.



=head2 Tags => ArrayRef[L<Paws::AppFabric::Tag>]

A map of the key-value pairs of the tag or tags to assign to the
resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIngestionDestination in L<Paws::AppFabric>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

