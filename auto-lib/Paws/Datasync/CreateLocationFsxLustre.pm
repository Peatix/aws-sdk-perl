
package Paws::Datasync::CreateLocationFsxLustre;
  use Moose;
  has FsxFilesystemArn => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationFsxLustre');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationFsxLustreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationFsxLustre - Arguments for method CreateLocationFsxLustre on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationFsxLustre on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationFsxLustre.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationFsxLustre.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationFsxLustreResponse = $datasync->CreateLocationFsxLustre(
      FsxFilesystemArn  => 'MyFsxFilesystemArn',
      SecurityGroupArns => [
        'MyEc2SecurityGroupArn', ...    # max: 128
      ],
      Subdirectory => 'MyFsxLustreSubdirectory',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationFsxLustreResponse->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationFsxLustreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationFsxLustre>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FsxFilesystemArn => Str

Specifies the Amazon Resource Name (ARN) of the FSx for Lustre file
system.



=head2 B<REQUIRED> SecurityGroupArns => ArrayRef[Str|Undef]

Specifies the Amazon Resource Names (ARNs) of up to five security
groups that provide access to your FSx for Lustre file system.

The security groups must be able to access the file system's ports. The
file system must also allow access from the security groups. For
information about file system access, see the I<Amazon FSx for Lustre
User Guide>
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/limit-access-security-groups.html).



=head2 Subdirectory => Str

Specifies a mount path for your FSx for Lustre file system. The path
can include subdirectories.

When the location is used as a source, DataSync reads data from the
mount path. When the location is used as a destination, DataSync writes
data to the mount path. If you don't include this parameter, DataSync
uses the file system's root directory (C</>).



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

Specifies labels that help you categorize, filter, and search for your
Amazon Web Services resources. We recommend creating at least a name
tag for your location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationFsxLustre in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

