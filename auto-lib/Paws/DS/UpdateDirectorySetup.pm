
package Paws::DS::UpdateDirectorySetup;
  use Moose;
  has CreateSnapshotBeforeUpdate => (is => 'ro', isa => 'Bool');
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has OSUpdateSettings => (is => 'ro', isa => 'Paws::DS::OSUpdateSettings');
  has UpdateType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDirectorySetup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::UpdateDirectorySetupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::UpdateDirectorySetup - Arguments for method UpdateDirectorySetup on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDirectorySetup on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method UpdateDirectorySetup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDirectorySetup.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $UpdateDirectorySetupResult = $ds->UpdateDirectorySetup(
      DirectoryId                => 'MyDirectoryId',
      UpdateType                 => 'OS',
      CreateSnapshotBeforeUpdate => 1,                 # OPTIONAL
      OSUpdateSettings           => {
        OSVersion => 'SERVER_2012', # values: SERVER_2012, SERVER_2019; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/UpdateDirectorySetup>

=head1 ATTRIBUTES


=head2 CreateSnapshotBeforeUpdate => Bool

The boolean that specifies if a snapshot for the directory needs to be
taken before updating the directory.



=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory on which you want to perform the
update.



=head2 OSUpdateSettings => L<Paws::DS::OSUpdateSettings>

The settings for the OS update that needs to be performed on the
directory.



=head2 B<REQUIRED> UpdateType => Str

The type of update that needs to be performed on the directory. For
example, OS.

Valid values are: C<"OS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDirectorySetup in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

