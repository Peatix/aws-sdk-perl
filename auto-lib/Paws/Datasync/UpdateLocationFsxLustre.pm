
package Paws::Datasync::UpdateLocationFsxLustre;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLocationFsxLustre');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateLocationFsxLustreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateLocationFsxLustre - Arguments for method UpdateLocationFsxLustre on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLocationFsxLustre on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateLocationFsxLustre.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLocationFsxLustre.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateLocationFsxLustreResponse = $datasync->UpdateLocationFsxLustre(
      LocationArn  => 'MyLocationArn',
      Subdirectory => 'MySmbSubdirectory',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateLocationFsxLustre>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

Specifies the Amazon Resource Name (ARN) of the FSx for Lustre transfer
location that you're updating.



=head2 Subdirectory => Str

Specifies a mount path for your FSx for Lustre file system. The path
can include subdirectories.

When the location is used as a source, DataSync reads data from the
mount path. When the location is used as a destination, DataSync writes
data to the mount path. If you don't include this parameter, DataSync
uses the file system's root directory (C</>).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLocationFsxLustre in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

