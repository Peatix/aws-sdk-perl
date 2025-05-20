
package Paws::EntityResolution::GetProviderServiceOutput;
  use Moose;
  has AnonymizedOutput => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'anonymizedOutput', required => 1);
  has ProviderComponentSchema => (is => 'ro', isa => 'Paws::EntityResolution::ProviderComponentSchema', traits => ['NameInRequest'], request_name => 'providerComponentSchema');
  has ProviderConfigurationDefinition => (is => 'ro', isa => 'Paws::EntityResolution::Document', traits => ['NameInRequest'], request_name => 'providerConfigurationDefinition');
  has ProviderEndpointConfiguration => (is => 'ro', isa => 'Paws::EntityResolution::ProviderEndpointConfiguration', traits => ['NameInRequest'], request_name => 'providerEndpointConfiguration', required => 1);
  has ProviderEntityOutputDefinition => (is => 'ro', isa => 'Paws::EntityResolution::Document', traits => ['NameInRequest'], request_name => 'providerEntityOutputDefinition', required => 1);
  has ProviderIdNameSpaceConfiguration => (is => 'ro', isa => 'Paws::EntityResolution::ProviderIdNameSpaceConfiguration', traits => ['NameInRequest'], request_name => 'providerIdNameSpaceConfiguration');
  has ProviderIntermediateDataAccessConfiguration => (is => 'ro', isa => 'Paws::EntityResolution::ProviderIntermediateDataAccessConfiguration', traits => ['NameInRequest'], request_name => 'providerIntermediateDataAccessConfiguration');
  has ProviderJobConfiguration => (is => 'ro', isa => 'Paws::EntityResolution::Document', traits => ['NameInRequest'], request_name => 'providerJobConfiguration');
  has ProviderName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'providerName', required => 1);
  has ProviderServiceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'providerServiceArn', required => 1);
  has ProviderServiceDisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'providerServiceDisplayName', required => 1);
  has ProviderServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'providerServiceName', required => 1);
  has ProviderServiceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'providerServiceType', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::GetProviderServiceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnonymizedOutput => Bool

Specifies whether output data from the provider is anonymized. A value
of C<TRUE> means the output will be anonymized and you can't relate the
data that comes back from the provider to the identifying input. A
value of C<FALSE> means the output won't be anonymized and you can
relate the data that comes back from the provider to your source data.


=head2 ProviderComponentSchema => L<Paws::EntityResolution::ProviderComponentSchema>

Input schema for the provider service.


=head2 ProviderConfigurationDefinition => L<Paws::EntityResolution::Document>

The definition of the provider configuration.


=head2 B<REQUIRED> ProviderEndpointConfiguration => L<Paws::EntityResolution::ProviderEndpointConfiguration>

The required configuration fields to use with the provider service.


=head2 B<REQUIRED> ProviderEntityOutputDefinition => L<Paws::EntityResolution::Document>

The definition of the provider entity output.


=head2 ProviderIdNameSpaceConfiguration => L<Paws::EntityResolution::ProviderIdNameSpaceConfiguration>

The provider configuration required for different ID namespace types.


=head2 ProviderIntermediateDataAccessConfiguration => L<Paws::EntityResolution::ProviderIntermediateDataAccessConfiguration>

The Amazon Web Services accounts and the S3 permissions that are
required by some providers to create an S3 bucket for intermediate data
storage.


=head2 ProviderJobConfiguration => L<Paws::EntityResolution::Document>

Provider service job configurations.


=head2 B<REQUIRED> ProviderName => Str

The name of the provider. This name is typically the company name.


=head2 B<REQUIRED> ProviderServiceArn => Str

The ARN (Amazon Resource Name) that Entity Resolution generated for the
provider service.


=head2 B<REQUIRED> ProviderServiceDisplayName => Str

The display name of the provider service.


=head2 B<REQUIRED> ProviderServiceName => Str

The name of the product that the provider service provides.


=head2 B<REQUIRED> ProviderServiceType => Str

The type of provider service.

Valid values are: C<"ASSIGNMENT">, C<"ID_MAPPING">
=head2 _request_id => Str


=cut

