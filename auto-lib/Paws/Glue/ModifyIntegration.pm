
package Paws::Glue::ModifyIntegration;
  use Moose;
  has DataFilter => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IntegrationIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has IntegrationName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyIntegration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ModifyIntegrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ModifyIntegration - Arguments for method ModifyIntegration on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyIntegration on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ModifyIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyIntegration.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ModifyIntegrationResponse = $glue->ModifyIntegration(
      IntegrationIdentifier => 'MyString128',
      DataFilter            => 'MyString2048',                # OPTIONAL
      Description           => 'MyIntegrationDescription',    # OPTIONAL
      IntegrationName       => 'MyString128',                 # OPTIONAL
    );

    # Results:
    my $AdditionalEncryptionContext =
      $ModifyIntegrationResponse->AdditionalEncryptionContext;
    my $CreateTime      = $ModifyIntegrationResponse->CreateTime;
    my $DataFilter      = $ModifyIntegrationResponse->DataFilter;
    my $Description     = $ModifyIntegrationResponse->Description;
    my $Errors          = $ModifyIntegrationResponse->Errors;
    my $IntegrationArn  = $ModifyIntegrationResponse->IntegrationArn;
    my $IntegrationName = $ModifyIntegrationResponse->IntegrationName;
    my $KmsKeyId        = $ModifyIntegrationResponse->KmsKeyId;
    my $SourceArn       = $ModifyIntegrationResponse->SourceArn;
    my $Status          = $ModifyIntegrationResponse->Status;
    my $Tags            = $ModifyIntegrationResponse->Tags;
    my $TargetArn       = $ModifyIntegrationResponse->TargetArn;

    # Returns a L<Paws::Glue::ModifyIntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ModifyIntegration>

=head1 ATTRIBUTES


=head2 DataFilter => Str

Selects source tables for the integration using Maxwell filter syntax.



=head2 Description => Str

A description of the integration.



=head2 B<REQUIRED> IntegrationIdentifier => Str

The Amazon Resource Name (ARN) for the integration.



=head2 IntegrationName => Str

A unique name for an integration in Glue.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyIntegration in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

