
package Paws::AppIntegrations::CreateDataIntegration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FileConfiguration => (is => 'ro', isa => 'Paws::AppIntegrations::FileConfiguration');
  has KmsKey => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ObjectConfiguration => (is => 'ro', isa => 'Paws::AppIntegrations::ObjectConfiguration');
  has ScheduleConfig => (is => 'ro', isa => 'Paws::AppIntegrations::ScheduleConfiguration');
  has SourceURI => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::AppIntegrations::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataIntegrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::CreateDataIntegrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::CreateDataIntegration - Arguments for method CreateDataIntegration on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataIntegration on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method CreateDataIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataIntegration.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $CreateDataIntegrationResponse =
      $app -integrations->CreateDataIntegration(
      KmsKey            => 'MyNonBlankString',
      Name              => 'MyName',
      ClientToken       => 'MyIdempotencyToken',    # OPTIONAL
      Description       => 'MyDescription',         # OPTIONAL
      FileConfiguration => {
        Folders => [
          'MyNonBlankLongString', ...               # min: 1, max: 200
        ],    # min: 1, max: 10
        Filters => {
          'MyNonBlankString' => [
            'MyFields', ...    # min: 1, max: 255
          ],    # key: min: 1, max: 255, value: min: 1, max: 2048
        },    # OPTIONAL
      },    # OPTIONAL
      ObjectConfiguration => {
        'MyNonBlankString' => {
          'MyNonBlankString' => [
            'MyFields', ...    # min: 1, max: 255
          ],    # key: min: 1, max: 255, value: min: 1, max: 2048
        },    # key: min: 1, max: 255, value: OPTIONAL
      },    # OPTIONAL
      ScheduleConfig => {
        ScheduleExpression => 'MyNonBlankString',   # min: 1, max: 255
        FirstExecutionFrom => 'MyNonBlankString',   # min: 1, max: 255
        Object             => 'MyObject',           # min: 1, max: 255; OPTIONAL
      },    # OPTIONAL
      SourceURI => 'MySourceURI',    # OPTIONAL
      Tags      => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn               = $CreateDataIntegrationResponse->Arn;
    my $ClientToken       = $CreateDataIntegrationResponse->ClientToken;
    my $Description       = $CreateDataIntegrationResponse->Description;
    my $FileConfiguration = $CreateDataIntegrationResponse->FileConfiguration;
    my $Id                = $CreateDataIntegrationResponse->Id;
    my $KmsKey            = $CreateDataIntegrationResponse->KmsKey;
    my $Name              = $CreateDataIntegrationResponse->Name;
    my $ObjectConfiguration =
      $CreateDataIntegrationResponse->ObjectConfiguration;
    my $ScheduleConfiguration =
      $CreateDataIntegrationResponse->ScheduleConfiguration;
    my $SourceURI = $CreateDataIntegrationResponse->SourceURI;
    my $Tags      = $CreateDataIntegrationResponse->Tags;

    # Returns a L<Paws::AppIntegrations::CreateDataIntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/CreateDataIntegration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Description => Str

A description of the DataIntegration.



=head2 FileConfiguration => L<Paws::AppIntegrations::FileConfiguration>

The configuration for what files should be pulled from the source.



=head2 B<REQUIRED> KmsKey => Str

The KMS key ARN for the DataIntegration.



=head2 B<REQUIRED> Name => Str

The name of the DataIntegration.



=head2 ObjectConfiguration => L<Paws::AppIntegrations::ObjectConfiguration>

The configuration for what data should be pulled from the source.



=head2 ScheduleConfig => L<Paws::AppIntegrations::ScheduleConfiguration>

The name of the data and how often it should be pulled from the source.



=head2 SourceURI => Str

The URI of the data source.



=head2 Tags => L<Paws::AppIntegrations::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataIntegration in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

