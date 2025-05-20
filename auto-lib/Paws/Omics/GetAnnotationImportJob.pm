
package Paws::Omics::GetAnnotationImportJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAnnotationImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/import/annotation/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetAnnotationImportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetAnnotationImportJob - Arguments for method GetAnnotationImportJob on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAnnotationImportJob on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetAnnotationImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAnnotationImportJob.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetAnnotationImportResponse = $omics->GetAnnotationImportJob(
      JobId => 'MyResourceId',

    );

    # Results:
    my $AnnotationFields = $GetAnnotationImportResponse->AnnotationFields;
    my $CompletionTime   = $GetAnnotationImportResponse->CompletionTime;
    my $CreationTime     = $GetAnnotationImportResponse->CreationTime;
    my $DestinationName  = $GetAnnotationImportResponse->DestinationName;
    my $FormatOptions    = $GetAnnotationImportResponse->FormatOptions;
    my $Id               = $GetAnnotationImportResponse->Id;
    my $Items            = $GetAnnotationImportResponse->Items;
    my $RoleArn          = $GetAnnotationImportResponse->RoleArn;
    my $RunLeftNormalization =
      $GetAnnotationImportResponse->RunLeftNormalization;
    my $Status        = $GetAnnotationImportResponse->Status;
    my $StatusMessage = $GetAnnotationImportResponse->StatusMessage;
    my $UpdateTime    = $GetAnnotationImportResponse->UpdateTime;
    my $VersionName   = $GetAnnotationImportResponse->VersionName;

    # Returns a L<Paws::Omics::GetAnnotationImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetAnnotationImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The job's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAnnotationImportJob in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

