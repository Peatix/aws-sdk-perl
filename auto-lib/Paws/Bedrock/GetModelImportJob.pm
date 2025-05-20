
package Paws::Bedrock::GetModelImportJob;
  use Moose;
  has JobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetModelImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-import-jobs/{jobIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::GetModelImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetModelImportJob - Arguments for method GetModelImportJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetModelImportJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method GetModelImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetModelImportJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $GetModelImportJobResponse = $bedrock->GetModelImportJob(
      JobIdentifier => 'MyModelImportJobIdentifier',

    );

    # Results:
    my $CreationTime     = $GetModelImportJobResponse->CreationTime;
    my $EndTime          = $GetModelImportJobResponse->EndTime;
    my $FailureMessage   = $GetModelImportJobResponse->FailureMessage;
    my $ImportedModelArn = $GetModelImportJobResponse->ImportedModelArn;
    my $ImportedModelKmsKeyArn =
      $GetModelImportJobResponse->ImportedModelKmsKeyArn;
    my $ImportedModelName = $GetModelImportJobResponse->ImportedModelName;
    my $JobArn            = $GetModelImportJobResponse->JobArn;
    my $JobName           = $GetModelImportJobResponse->JobName;
    my $LastModifiedTime  = $GetModelImportJobResponse->LastModifiedTime;
    my $ModelDataSource   = $GetModelImportJobResponse->ModelDataSource;
    my $RoleArn           = $GetModelImportJobResponse->RoleArn;
    my $Status            = $GetModelImportJobResponse->Status;
    my $VpcConfig         = $GetModelImportJobResponse->VpcConfig;

    # Returns a L<Paws::Bedrock::GetModelImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/GetModelImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobIdentifier => Str

The identifier of the import job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetModelImportJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

