
package Paws::RDS::CreateIntegration;
  use Moose;
  has AdditionalEncryptionContext => (is => 'ro', isa => 'Paws::RDS::EncryptionContextMap');
  has DataFilter => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IntegrationName => (is => 'ro', isa => 'Str', required => 1);
  has KMSKeyId => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIntegration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::Integration');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateIntegrationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateIntegration - Arguments for method CreateIntegration on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIntegration on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIntegration.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $Integration = $rds->CreateIntegration(
      IntegrationName             => 'MyIntegrationName',
      SourceArn                   => 'MySourceArn',
      TargetArn                   => 'MyArn',
      AdditionalEncryptionContext => { 'MyString' => 'MyString', },   # OPTIONAL
      DataFilter                  => 'MyDataFilter',                  # OPTIONAL
      Description                 => 'MyIntegrationDescription',      # OPTIONAL
      KMSKeyId                    => 'MyString',                      # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                              # OPTIONAL
    );

    # Results:
    my $AdditionalEncryptionContext = $Integration->AdditionalEncryptionContext;
    my $CreateTime                  = $Integration->CreateTime;
    my $DataFilter                  = $Integration->DataFilter;
    my $Description                 = $Integration->Description;
    my $Errors                      = $Integration->Errors;
    my $IntegrationArn              = $Integration->IntegrationArn;
    my $IntegrationName             = $Integration->IntegrationName;
    my $KMSKeyId                    = $Integration->KMSKeyId;
    my $SourceArn                   = $Integration->SourceArn;
    my $Status                      = $Integration->Status;
    my $Tags                        = $Integration->Tags;
    my $TargetArn                   = $Integration->TargetArn;

    # Returns a L<Paws::RDS::Integration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateIntegration>

=head1 ATTRIBUTES


=head2 AdditionalEncryptionContext => L<Paws::RDS::EncryptionContextMap>

An optional set of non-secret keyE<ndash>value pairs that contains
additional contextual information about the data. For more information,
see Encryption context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<Amazon Web Services Key Management Service Developer Guide>.

You can only include this parameter if you specify the C<KMSKeyId>
parameter.



=head2 DataFilter => Str

Data filtering options for the integration. For more information, see
Data filtering for Aurora zero-ETL integrations with Amazon Redshift
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/zero-etl.filtering.html)
or Data filtering for Amazon RDS zero-ETL integrations with Amazon
Redshift
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/zero-etl.filtering.html).



=head2 Description => Str

A description of the integration.



=head2 B<REQUIRED> IntegrationName => Str

The name of the integration.



=head2 KMSKeyId => Str

The Amazon Web Services Key Management System (Amazon Web Services KMS)
key identifier for the key to use to encrypt the integration. If you
don't specify an encryption key, RDS uses a default Amazon Web Services
owned key.



=head2 B<REQUIRED> SourceArn => Str

The Amazon Resource Name (ARN) of the database to use as the source for
replication.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 B<REQUIRED> TargetArn => Str

The ARN of the Redshift data warehouse to use as the target for
replication.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIntegration in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

