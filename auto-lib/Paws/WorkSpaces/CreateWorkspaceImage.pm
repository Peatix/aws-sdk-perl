
package Paws::WorkSpaces::CreateWorkspaceImage;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Tag]');
  has WorkspaceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkspaceImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::CreateWorkspaceImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateWorkspaceImage - Arguments for method CreateWorkspaceImage on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkspaceImage on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateWorkspaceImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkspaceImage.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateWorkspaceImageResult = $workspaces->CreateWorkspaceImage(
      Description => 'MyWorkspaceImageDescription',
      Name        => 'MyWorkspaceImageName',
      WorkspaceId => 'MyWorkspaceId',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 127
          Value => 'MyTagValue',    # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Created         = $CreateWorkspaceImageResult->Created;
    my $Description     = $CreateWorkspaceImageResult->Description;
    my $ImageId         = $CreateWorkspaceImageResult->ImageId;
    my $Name            = $CreateWorkspaceImageResult->Name;
    my $OperatingSystem = $CreateWorkspaceImageResult->OperatingSystem;
    my $OwnerAccountId  = $CreateWorkspaceImageResult->OwnerAccountId;
    my $RequiredTenancy = $CreateWorkspaceImageResult->RequiredTenancy;
    my $State           = $CreateWorkspaceImageResult->State;

    # Returns a L<Paws::WorkSpaces::CreateWorkspaceImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateWorkspaceImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

The description of the new WorkSpace image.



=head2 B<REQUIRED> Name => Str

The name of the new WorkSpace image.



=head2 Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]

The tags that you want to add to the new WorkSpace image. To add tags
when you're creating the image, you must create an IAM policy that
grants your IAM user permission to use C<workspaces:CreateTags>.



=head2 B<REQUIRED> WorkspaceId => Str

The identifier of the source WorkSpace




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkspaceImage in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

