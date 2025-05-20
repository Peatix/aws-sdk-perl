
package Paws::RedShift::ModifyIntegration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has IntegrationArn => (is => 'ro', isa => 'Str', required => 1);
  has IntegrationName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyIntegration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::Integration');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyIntegrationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyIntegration - Arguments for method ModifyIntegration on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyIntegration on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyIntegration.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $Integration = $redshift->ModifyIntegration(
      IntegrationArn  => 'MyIntegrationArn',
      Description     => 'MyIntegrationDescription',    # OPTIONAL
      IntegrationName => 'MyIntegrationName',           # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyIntegration>

=head1 ATTRIBUTES


=head2 Description => Str

A new description for the integration.



=head2 B<REQUIRED> IntegrationArn => Str

The unique identifier of the integration to modify.



=head2 IntegrationName => Str

A new name for the integration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyIntegration in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

