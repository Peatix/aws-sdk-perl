
package Paws::AppFabric::CreateIngestion;
  use Moose;
  has App => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'app', required => 1);
  has AppBundleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appBundleIdentifier', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has IngestionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ingestionType', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppFabric::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has TenantId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tenantId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIngestion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appbundles/{appBundleIdentifier}/ingestions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppFabric::CreateIngestionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::CreateIngestion - Arguments for method CreateIngestion on L<Paws::AppFabric>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIngestion on the
L<AppFabric|Paws::AppFabric> service. Use the attributes of this class
as arguments to method CreateIngestion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIngestion.

=head1 SYNOPSIS

    my $appfabric = Paws->service('AppFabric');
    my $CreateIngestionResponse = $appfabric->CreateIngestion(
      App                 => 'MyString255',
      AppBundleIdentifier => 'MyIdentifier',
      IngestionType       => 'auditLog',
      TenantId            => 'MyTenantIdentifier',
      ClientToken         => 'MyUUID',               # OPTIONAL
      Tags                => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Ingestion = $CreateIngestionResponse->Ingestion;

    # Returns a L<Paws::AppFabric::CreateIngestionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric/CreateIngestion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> App => Str

The name of the application.

Valid values are:

=over

=item *

C<SLACK>

=item *

C<ASANA>

=item *

C<JIRA>

=item *

C<M365>

=item *

C<M365AUDITLOGS>

=item *

C<ZOOM>

=item *

C<ZENDESK>

=item *

C<OKTA>

=item *

C<GOOGLE>

=item *

C<DROPBOX>

=item *

C<SMARTSHEET>

=item *

C<CISCO>

=back




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



=head2 B<REQUIRED> IngestionType => Str

The ingestion type.

Valid values are: C<"auditLog">

=head2 Tags => ArrayRef[L<Paws::AppFabric::Tag>]

A map of the key-value pairs of the tag or tags to assign to the
resource.



=head2 B<REQUIRED> TenantId => Str

The ID of the application tenant.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIngestion in L<Paws::AppFabric>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

