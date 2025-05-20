
package Paws::SecurityLake::CreateCustomLogSource;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::SecurityLake::CustomLogSourceConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has EventClasses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'eventClasses');
  has SourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceName', required => 1);
  has SourceVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomLogSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/logsources/custom');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::CreateCustomLogSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::CreateCustomLogSource - Arguments for method CreateCustomLogSource on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomLogSource on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method CreateCustomLogSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomLogSource.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $CreateCustomLogSourceResponse = $securitylake->CreateCustomLogSource(
      Configuration => {
        CrawlerConfiguration => {
          RoleArn => 'MyRoleArn',

        },
        ProviderIdentity => {
          ExternalId => 'MyExternalId',     # min: 2, max: 1224
          Principal  => 'MyAwsPrincipal',

        },

      },
      SourceName    => 'MyCustomLogSourceName',
      EventClasses  => [ 'MyOcsfEventClass', ... ],    # OPTIONAL
      SourceVersion => 'MyCustomLogSourceVersion',     # OPTIONAL
    );

    # Results:
    my $Source = $CreateCustomLogSourceResponse->Source;

    # Returns a L<Paws::SecurityLake::CreateCustomLogSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/CreateCustomLogSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::SecurityLake::CustomLogSourceConfiguration>

The configuration used for the third-party custom source.



=head2 EventClasses => ArrayRef[Str|Undef]

The Open Cybersecurity Schema Framework (OCSF) event classes which
describes the type of data that the custom source will send to Security
Lake. For the list of supported event classes, see the Amazon Security
Lake User Guide
(https://docs.aws.amazon.com/security-lake/latest/userguide/adding-custom-sources.html#ocsf-eventclass).



=head2 B<REQUIRED> SourceName => Str

Specify the name for a third-party custom source. This must be a
Regionally unique value. The C<sourceName> you enter here, is used in
the C<LogProviderRole> name which follows the convention
C<AmazonSecurityLake-Provider-{name of the custom source}-{region}>.
You must use a C<CustomLogSource> name that is shorter than or equal to
20 characters. This ensures that the C<LogProviderRole> name is below
the 64 character limit.



=head2 SourceVersion => Str

Specify the source version for the third-party custom source, to limit
log collection to a specific version of custom data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomLogSource in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

