
package Paws::RDS::DeleteIntegration;
  use Moose;
  has IntegrationIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIntegration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::Integration');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIntegrationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteIntegration - Arguments for method DeleteIntegration on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIntegration on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIntegration.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $Integration = $rds->DeleteIntegration(
      IntegrationIdentifier => 'MyIntegrationIdentifier',

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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IntegrationIdentifier => Str

The unique identifier of the integration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIntegration in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

