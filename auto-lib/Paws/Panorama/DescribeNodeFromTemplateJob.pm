
package Paws::Panorama::DescribeNodeFromTemplateJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'JobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNodeFromTemplateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/template-job/{JobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::DescribeNodeFromTemplateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribeNodeFromTemplateJob - Arguments for method DescribeNodeFromTemplateJob on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNodeFromTemplateJob on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method DescribeNodeFromTemplateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNodeFromTemplateJob.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $DescribeNodeFromTemplateJobResponse =
      $panorama->DescribeNodeFromTemplateJob(
      JobId => 'MyJobId',

      );

    # Results:
    my $CreatedTime     = $DescribeNodeFromTemplateJobResponse->CreatedTime;
    my $JobId           = $DescribeNodeFromTemplateJobResponse->JobId;
    my $JobTags         = $DescribeNodeFromTemplateJobResponse->JobTags;
    my $LastUpdatedTime = $DescribeNodeFromTemplateJobResponse->LastUpdatedTime;
    my $NodeDescription = $DescribeNodeFromTemplateJobResponse->NodeDescription;
    my $NodeName        = $DescribeNodeFromTemplateJobResponse->NodeName;
    my $OutputPackageName =
      $DescribeNodeFromTemplateJobResponse->OutputPackageName;
    my $OutputPackageVersion =
      $DescribeNodeFromTemplateJobResponse->OutputPackageVersion;
    my $Status        = $DescribeNodeFromTemplateJobResponse->Status;
    my $StatusMessage = $DescribeNodeFromTemplateJobResponse->StatusMessage;
    my $TemplateParameters =
      $DescribeNodeFromTemplateJobResponse->TemplateParameters;
    my $TemplateType = $DescribeNodeFromTemplateJobResponse->TemplateType;

    # Returns a L<Paws::Panorama::DescribeNodeFromTemplateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/DescribeNodeFromTemplateJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The job's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNodeFromTemplateJob in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

