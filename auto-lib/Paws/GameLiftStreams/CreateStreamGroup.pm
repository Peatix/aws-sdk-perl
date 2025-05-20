
package Paws::GameLiftStreams::CreateStreamGroup;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DefaultApplicationIdentifier => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has LocationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::GameLiftStreams::LocationConfiguration]');
  has StreamClass => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GameLiftStreams::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streamgroups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLiftStreams::CreateStreamGroupOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::CreateStreamGroup - Arguments for method CreateStreamGroup on L<Paws::GameLiftStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamGroup on the
L<Amazon GameLift Streams|Paws::GameLiftStreams> service. Use the attributes of this class
as arguments to method CreateStreamGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamGroup.

=head1 SYNOPSIS

    my $gameliftstreams = Paws->service('GameLiftStreams');
    my $CreateStreamGroupOutput = $gameliftstreams->CreateStreamGroup(
      Description                  => 'MyDescription',
      StreamClass                  => 'gen4n_high',
      ClientToken                  => 'MyClientToken',    # OPTIONAL
      DefaultApplicationIdentifier => 'MyIdentifier',     # OPTIONAL
      LocationConfigurations       => [
        {
          LocationName     => 'MyLocationName',    # min: 1, max: 20
          AlwaysOnCapacity => 1,                   # OPTIONAL
          OnDemandCapacity => 1,                   # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateStreamGroupOutput->Arn;
    my $AssociatedApplications =
      $CreateStreamGroupOutput->AssociatedApplications;
    my $CreatedAt          = $CreateStreamGroupOutput->CreatedAt;
    my $DefaultApplication = $CreateStreamGroupOutput->DefaultApplication;
    my $Description        = $CreateStreamGroupOutput->Description;
    my $Id                 = $CreateStreamGroupOutput->Id;
    my $LastUpdatedAt      = $CreateStreamGroupOutput->LastUpdatedAt;
    my $LocationStates     = $CreateStreamGroupOutput->LocationStates;
    my $Status             = $CreateStreamGroupOutput->Status;
    my $StatusReason       = $CreateStreamGroupOutput->StatusReason;
    my $StreamClass        = $CreateStreamGroupOutput->StreamClass;

    # Returns a L<Paws::GameLiftStreams::CreateStreamGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gameliftstreams/CreateStreamGroup>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique identifier that represents a client request. The request is
idempotent, which ensures that an API request completes only once. When
users send a request, Amazon GameLift Streams automatically populates
this field.



=head2 DefaultApplicationIdentifier => Str

The unique identifier of the Amazon GameLift Streams application that
you want to associate to a stream group as the default application. The
application must be in C<READY> status. By setting the default
application identifier, you will optimize startup performance of this
application in your stream group. Once set, this application cannot be
disassociated from the stream group, unlike applications that are
associated using AssociateApplications. If not set when creating a
stream group, you will need to call AssociateApplications later, before
you can start streaming.



=head2 B<REQUIRED> Description => Str

A descriptive label for the stream group.



=head2 LocationConfigurations => ArrayRef[L<Paws::GameLiftStreams::LocationConfiguration>]

A set of one or more locations and the streaming capacity for each
location.



=head2 B<REQUIRED> StreamClass => Str

The target stream quality for sessions that are hosted in this stream
group. Set a stream class that is appropriate to the type of content
that you're streaming. Stream class determines the type of computing
resources Amazon GameLift Streams uses and impacts the cost of
streaming. The following options are available:

A stream class can be one of the following:

=over

=item *

B<C<gen5n_win2022> (NVIDIA, ultra)> Supports applications with
extremely high 3D scene complexity. Runs applications on Microsoft
Windows Server 2022 Base and supports DirectX 12. Compatible with
Unreal Engine versions up through 5.4, 32 and 64-bit applications, and
anti-cheat technology. Uses NVIDIA A10G Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM

=item *

Tenancy: Supports 1 concurrent stream session

=back

=item *

B<C<gen5n_high> (NVIDIA, high)> Supports applications with moderate to
high 3D scene complexity. Uses NVIDIA A10G Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM

=item *

Tenancy: Supports up to 2 concurrent stream sessions

=back

=item *

B<C<gen5n_ultra> (NVIDIA, ultra)> Supports applications with extremely
high 3D scene complexity. Uses dedicated NVIDIA A10G Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM

=item *

Tenancy: Supports 1 concurrent stream session

=back

=item *

B<C<gen4n_win2022> (NVIDIA, ultra)> Supports applications with
extremely high 3D scene complexity. Runs applications on Microsoft
Windows Server 2022 Base and supports DirectX 12. Compatible with
Unreal Engine versions up through 5.4, 32 and 64-bit applications, and
anti-cheat technology. Uses NVIDIA T4 Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM

=item *

Tenancy: Supports 1 concurrent stream session

=back

=item *

B<C<gen4n_high> (NVIDIA, high)> Supports applications with moderate to
high 3D scene complexity. Uses NVIDIA T4 Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 4 vCPUs, 16 GB RAM, 8 GB VRAM

=item *

Tenancy: Supports up to 2 concurrent stream sessions

=back

=item *

B<C<gen4n_ultra> (NVIDIA, ultra)> Supports applications with high 3D
scene complexity. Uses dedicated NVIDIA T4 Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM

=item *

Tenancy: Supports 1 concurrent stream session

=back

=back


Valid values are: C<"gen4n_high">, C<"gen4n_ultra">, C<"gen4n_win2022">, C<"gen5n_high">, C<"gen5n_ultra">, C<"gen5n_win2022">

=head2 Tags => L<Paws::GameLiftStreams::Tags>

A list of labels to assign to the new stream group resource. Tags are
developer-defined key-value pairs. Tagging Amazon Web Services
resources is useful for resource management, access management and cost
allocation. See Tagging Amazon Web Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>. You can use TagResource
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TagResource.html)
to add tags, UntagResource
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UntagResource.html)
to remove tags, and ListTagsForResource
(https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListTagsForResource.html)
to view tags on existing resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamGroup in L<Paws::GameLiftStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

