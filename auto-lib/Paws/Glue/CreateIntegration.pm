
package Paws::Glue::CreateIntegration;
  use Moose;
  has AdditionalEncryptionContext => (is => 'ro', isa => 'Paws::Glue::IntegrationAdditionalEncryptionContextMap');
  has DataFilter => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IntegrationConfig => (is => 'ro', isa => 'Paws::Glue::IntegrationConfig');
  has IntegrationName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Tag]');
  has TargetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIntegration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateIntegrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateIntegration - Arguments for method CreateIntegration on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIntegration on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIntegration.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateIntegrationResponse = $glue->CreateIntegration(
      IntegrationName             => 'MyString128',
      SourceArn                   => 'MyString128',
      TargetArn                   => 'MyString128',
      AdditionalEncryptionContext =>
        { 'MyIntegrationString' => 'MyIntegrationString', },    # OPTIONAL
      DataFilter        => 'MyString2048',                      # OPTIONAL
      Description       => 'MyIntegrationDescription',          # OPTIONAL
      IntegrationConfig => {
        RefreshInterval => 'MyString128',    # min: 1, max: 128
      },    # OPTIONAL
      KmsKeyId => 'MyString2048',    # OPTIONAL
      Tags     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AdditionalEncryptionContext =
      $CreateIntegrationResponse->AdditionalEncryptionContext;
    my $CreateTime        = $CreateIntegrationResponse->CreateTime;
    my $DataFilter        = $CreateIntegrationResponse->DataFilter;
    my $Description       = $CreateIntegrationResponse->Description;
    my $Errors            = $CreateIntegrationResponse->Errors;
    my $IntegrationArn    = $CreateIntegrationResponse->IntegrationArn;
    my $IntegrationConfig = $CreateIntegrationResponse->IntegrationConfig;
    my $IntegrationName   = $CreateIntegrationResponse->IntegrationName;
    my $KmsKeyId          = $CreateIntegrationResponse->KmsKeyId;
    my $SourceArn         = $CreateIntegrationResponse->SourceArn;
    my $Status            = $CreateIntegrationResponse->Status;
    my $Tags              = $CreateIntegrationResponse->Tags;
    my $TargetArn         = $CreateIntegrationResponse->TargetArn;

    # Returns a L<Paws::Glue::CreateIntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateIntegration>

=head1 ATTRIBUTES


=head2 AdditionalEncryptionContext => L<Paws::Glue::IntegrationAdditionalEncryptionContextMap>

An optional set of non-secret keyE<ndash>value pairs that contains
additional contextual information for encryption. This can only be
provided if C<KMSKeyId> is provided.



=head2 DataFilter => Str

Selects source tables for the integration using Maxwell filter syntax.



=head2 Description => Str

A description of the integration.



=head2 IntegrationConfig => L<Paws::Glue::IntegrationConfig>

The configuration settings.



=head2 B<REQUIRED> IntegrationName => Str

A unique name for an integration in Glue.



=head2 KmsKeyId => Str

The ARN of a KMS key used for encrypting the channel.



=head2 B<REQUIRED> SourceArn => Str

The ARN of the source resource for the integration.



=head2 Tags => ArrayRef[L<Paws::Glue::Tag>]

Metadata assigned to the resource consisting of a list of key-value
pairs.



=head2 B<REQUIRED> TargetArn => Str

The ARN of the target resource for the integration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIntegration in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

