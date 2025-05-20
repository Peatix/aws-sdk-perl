
package Paws::Panorama::CreateNodeFromTemplateJob;
  use Moose;
  has JobTags => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::JobResourceTags]');
  has NodeDescription => (is => 'ro', isa => 'Str');
  has NodeName => (is => 'ro', isa => 'Str', required => 1);
  has OutputPackageName => (is => 'ro', isa => 'Str', required => 1);
  has OutputPackageVersion => (is => 'ro', isa => 'Str', required => 1);
  has TemplateParameters => (is => 'ro', isa => 'Paws::Panorama::TemplateParametersMap', required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNodeFromTemplateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/template-job');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::CreateNodeFromTemplateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::CreateNodeFromTemplateJob - Arguments for method CreateNodeFromTemplateJob on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNodeFromTemplateJob on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method CreateNodeFromTemplateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNodeFromTemplateJob.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $CreateNodeFromTemplateJobResponse =
      $panorama->CreateNodeFromTemplateJob(
      NodeName             => 'MyNodeName',
      OutputPackageName    => 'MyNodePackageName',
      OutputPackageVersion => 'MyNodePackageVersion',
      TemplateParameters   => {
        'MyTemplateKey' =>
          'MyTemplateValue',    # key: min: 1, max: 255, value: min: 1, max: 255
      },
      TemplateType => 'RTSP_CAMERA_STREAM',
      JobTags      => [
        {
          ResourceType => 'PACKAGE',    # values: PACKAGE
          Tags         => {
            'MyTagKey' => 'MyTagValue', # key: min: 1, max: 128, value: max: 256
          },    # max: 50

        },
        ...
      ],    # OPTIONAL
      NodeDescription => 'MyDescription',    # OPTIONAL
      );

    # Results:
    my $JobId = $CreateNodeFromTemplateJobResponse->JobId;

    # Returns a L<Paws::Panorama::CreateNodeFromTemplateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/CreateNodeFromTemplateJob>

=head1 ATTRIBUTES


=head2 JobTags => ArrayRef[L<Paws::Panorama::JobResourceTags>]

Tags for the job.



=head2 NodeDescription => Str

A description for the node.



=head2 B<REQUIRED> NodeName => Str

A name for the node.



=head2 B<REQUIRED> OutputPackageName => Str

An output package name for the node.



=head2 B<REQUIRED> OutputPackageVersion => Str

An output package version for the node.



=head2 B<REQUIRED> TemplateParameters => L<Paws::Panorama::TemplateParametersMap>

Template parameters for the node.



=head2 B<REQUIRED> TemplateType => Str

The type of node.

Valid values are: C<"RTSP_CAMERA_STREAM">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNodeFromTemplateJob in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

