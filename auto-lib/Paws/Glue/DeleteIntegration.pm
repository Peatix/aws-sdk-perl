
package Paws::Glue::DeleteIntegration;
  use Moose;
  has IntegrationIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIntegration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DeleteIntegrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteIntegration - Arguments for method DeleteIntegration on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIntegration on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DeleteIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIntegration.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DeleteIntegrationResponse = $glue->DeleteIntegration(
      IntegrationIdentifier => 'MyString128',

    );

    # Results:
    my $AdditionalEncryptionContext =
      $DeleteIntegrationResponse->AdditionalEncryptionContext;
    my $CreateTime      = $DeleteIntegrationResponse->CreateTime;
    my $DataFilter      = $DeleteIntegrationResponse->DataFilter;
    my $Description     = $DeleteIntegrationResponse->Description;
    my $Errors          = $DeleteIntegrationResponse->Errors;
    my $IntegrationArn  = $DeleteIntegrationResponse->IntegrationArn;
    my $IntegrationName = $DeleteIntegrationResponse->IntegrationName;
    my $KmsKeyId        = $DeleteIntegrationResponse->KmsKeyId;
    my $SourceArn       = $DeleteIntegrationResponse->SourceArn;
    my $Status          = $DeleteIntegrationResponse->Status;
    my $Tags            = $DeleteIntegrationResponse->Tags;
    my $TargetArn       = $DeleteIntegrationResponse->TargetArn;

    # Returns a L<Paws::Glue::DeleteIntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DeleteIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IntegrationIdentifier => Str

The Amazon Resource Name (ARN) for the integration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIntegration in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

