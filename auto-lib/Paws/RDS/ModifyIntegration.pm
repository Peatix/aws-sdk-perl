
package Paws::RDS::ModifyIntegration;
  use Moose;
  has DataFilter => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IntegrationIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has IntegrationName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyIntegration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::Integration');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyIntegrationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyIntegration - Arguments for method ModifyIntegration on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyIntegration on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyIntegration.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $Integration = $rds->ModifyIntegration(
      IntegrationIdentifier => 'MyIntegrationIdentifier',
      DataFilter            => 'MyDataFilter',                # OPTIONAL
      Description           => 'MyIntegrationDescription',    # OPTIONAL
      IntegrationName       => 'MyIntegrationName',           # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyIntegration>

=head1 ATTRIBUTES


=head2 DataFilter => Str

A new data filter for the integration. For more information, see Data
filtering for Aurora zero-ETL integrations with Amazon Redshift
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Zero_ETL_Filtering.html)
or Data filtering for Amazon RDS zero-ETL integrations with Amazon
Redshift
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/zero-etl.filtering.html).



=head2 Description => Str

A new description for the integration.



=head2 B<REQUIRED> IntegrationIdentifier => Str

The unique identifier of the integration to modify.



=head2 IntegrationName => Str

A new name for the integration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyIntegration in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

