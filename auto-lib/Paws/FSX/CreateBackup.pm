
package Paws::FSX::CreateBackup;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has VolumeId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBackup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CreateBackupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateBackup - Arguments for method CreateBackup on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBackup on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CreateBackup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBackup.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    # To create a new backup
    # This operation creates a new backup.
    my $CreateBackupResponse = $fsx->CreateBackup(
      'FileSystemId' => 'fs-0498eed5fe91001ec',
      'Tags'         => [

        {
          'Key'   => 'Name',
          'Value' => 'MyBackup'
        }
      ]
    );

    # Results:
    my $Backup = $CreateBackupResponse->Backup;

    # Returns a L<Paws::FSX::CreateBackupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CreateBackup>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

(Optional) A string of up to 63 ASCII characters that Amazon FSx uses
to ensure idempotent creation. This string is automatically filled on
your behalf when you use the Command Line Interface (CLI) or an Amazon
Web Services SDK.



=head2 FileSystemId => Str

The ID of the file system to back up.



=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]

(Optional) The tags to apply to the backup at backup creation. The key
value of the C<Name> tag appears in the console as the backup name. If
you have set C<CopyTagsToBackups> to C<true>, and you specify one or
more tags using the C<CreateBackup> operation, no existing file system
tags are copied from the file system to the backup.



=head2 VolumeId => Str

(Optional) The ID of the FSx for ONTAP volume to back up.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBackup in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

