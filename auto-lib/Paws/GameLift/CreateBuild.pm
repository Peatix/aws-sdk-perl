
package Paws::GameLift::CreateBuild;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has ServerSdkVersion => (is => 'ro', isa => 'Str');
  has StorageLocation => (is => 'ro', isa => 'Paws::GameLift::S3Location');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Tag]');
  has Version => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBuild');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateBuildOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateBuild - Arguments for method CreateBuild on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBuild on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateBuild.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBuild.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateBuildOutput = $gamelift->CreateBuild(
      Name             => 'MyNonZeroAndMaxString',    # OPTIONAL
      OperatingSystem  => 'WINDOWS_2012',             # OPTIONAL
      ServerSdkVersion => 'MyServerSdkVersion',       # OPTIONAL
      StorageLocation  => {
        Bucket        => 'MyNonEmptyString',          # min: 1; OPTIONAL
        Key           => 'MyNonEmptyString',          # min: 1; OPTIONAL
        ObjectVersion => 'MyNonEmptyString',          # min: 1; OPTIONAL
        RoleArn       => 'MyNonEmptyString',          # min: 1; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      Version => 'MyNonZeroAndMaxString',    # OPTIONAL
    );

    # Results:
    my $Build             = $CreateBuildOutput->Build;
    my $StorageLocation   = $CreateBuildOutput->StorageLocation;
    my $UploadCredentials = $CreateBuildOutput->UploadCredentials;

    # Returns a L<Paws::GameLift::CreateBuildOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateBuild>

=head1 ATTRIBUTES


=head2 Name => Str

A descriptive label that is associated with a build. Build names do not
need to be unique. You can change this value later.



=head2 OperatingSystem => Str

The operating system that your game server binaries run on. This value
determines the type of fleet resources that you use for this build. If
your game build contains multiple executables, they all must run on the
same operating system. You must specify a valid operating system in
this request. There is no default value. You can't change a build's
operating system later.

Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See more
details in the Amazon Linux 2 FAQs
(https://aws.amazon.com/amazon-linux-2/faqs/). For game servers that
are hosted on AL2 and use server SDK version 4.x for Amazon GameLift,
first update the game server build to server SDK 5.x, and then deploy
to AL2023 instances. See Migrate to server SDK version 5.
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html)

Valid values are: C<"WINDOWS_2012">, C<"AMAZON_LINUX">, C<"AMAZON_LINUX_2">, C<"WINDOWS_2016">, C<"AMAZON_LINUX_2023">

=head2 ServerSdkVersion => Str

A server SDK version you used when integrating your game server build
with Amazon GameLift. For more information see Integrate games with
custom game servers
(https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-custom-intro.html).
By default Amazon GameLift sets this value to C<4.0.2>.



=head2 StorageLocation => L<Paws::GameLift::S3Location>

Information indicating where your game build files are stored. Use this
parameter only when creating a build with files stored in an Amazon S3
bucket that you own. The storage location must specify an Amazon S3
bucket name and key. The location must also specify a role ARN that you
set up to allow Amazon GameLift to access your Amazon S3 bucket. The S3
bucket and your new build must be in the same Region.

If a C<StorageLocation> is specified, the size of your file can be
found in your Amazon S3 bucket. Amazon GameLift will report a
C<SizeOnDisk> of 0.



=head2 Tags => ArrayRef[L<Paws::GameLift::Tag>]

A list of labels to assign to the new build resource. Tags are
developer defined key-value pairs. Tagging Amazon Web Services
resources are useful for resource management, access management and
cost allocation. For more information, see Tagging Amazon Web Services
Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>. Once the resource is created,
you can use TagResource
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_TagResource.html),
UntagResource
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_UntagResource.html),
and ListTagsForResource
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListTagsForResource.html)
to add, remove, and view tags. The maximum tag limit may be lower than
stated. See the Amazon Web Services General Reference for actual
tagging limits.



=head2 Version => Str

Version information that is associated with a build or script. Version
strings do not need to be unique. You can change this value later.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBuild in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

