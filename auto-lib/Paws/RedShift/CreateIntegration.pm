
package Paws::RedShift::CreateIntegration;
  use Moose;
  has AdditionalEncryptionContext => (is => 'ro', isa => 'Paws::RedShift::EncryptionContextMap');
  has Description => (is => 'ro', isa => 'Str');
  has IntegrationName => (is => 'ro', isa => 'Str', required => 1);
  has KMSKeyId => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');
  has TargetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIntegration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::Integration');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateIntegrationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateIntegration - Arguments for method CreateIntegration on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIntegration on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIntegration.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $Integration = $redshift->CreateIntegration(
      IntegrationName             => 'MyIntegrationName',
      SourceArn                   => 'MySourceArn',
      TargetArn                   => 'MyTargetArn',
      AdditionalEncryptionContext => {
        'MyString' => 'MyString', # key: max: 2147483647, value: max: 2147483647
      },    # OPTIONAL
      Description => 'MyIntegrationDescription',    # OPTIONAL
      KMSKeyId    => 'MyString',                    # OPTIONAL
      TagList     => [
        {
          Key   => 'MyString',    # max: 2147483647
          Value => 'MyString',    # max: 2147483647
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AdditionalEncryptionContext = $Integration->AdditionalEncryptionContext;
    my $CreateTime                  = $Integration->CreateTime;
    my $Description                 = $Integration->Description;
    my $Errors                      = $Integration->Errors;
    my $IntegrationArn              = $Integration->IntegrationArn;
    my $IntegrationName             = $Integration->IntegrationName;
    my $KMSKeyId                    = $Integration->KMSKeyId;
    my $SourceArn                   = $Integration->SourceArn;
    my $Status                      = $Integration->Status;
    my $Tags                        = $Integration->Tags;
    my $TargetArn                   = $Integration->TargetArn;

    # Returns a L<Paws::RedShift::Integration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateIntegration>

=head1 ATTRIBUTES


=head2 AdditionalEncryptionContext => L<Paws::RedShift::EncryptionContextMap>

An optional set of non-secret keyE<ndash>value pairs that contains
additional contextual information about the data. For more information,
see Encryption context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<Amazon Web Services Key Management Service Developer Guide>.

You can only include this parameter if you specify the C<KMSKeyId>
parameter.



=head2 Description => Str

A description of the integration.



=head2 B<REQUIRED> IntegrationName => Str

The name of the integration.



=head2 KMSKeyId => Str

An Key Management Service (KMS) key identifier for the key to use to
encrypt the integration. If you don't specify an encryption key, the
default Amazon Web Services owned key is used.



=head2 B<REQUIRED> SourceArn => Str

The Amazon Resource Name (ARN) of the database to use as the source for
replication.



=head2 TagList => ArrayRef[L<Paws::RedShift::Tag>]

A list of tags.



=head2 B<REQUIRED> TargetArn => Str

The Amazon Resource Name (ARN) of the Amazon Redshift data warehouse to
use as the target for replication.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIntegration in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

