
package Paws::DMS::DeleteMigrationProject;
  use Moose;
  has MigrationProjectIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMigrationProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DeleteMigrationProjectResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteMigrationProject - Arguments for method DeleteMigrationProject on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMigrationProject on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DeleteMigrationProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMigrationProject.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DeleteMigrationProjectResponse = $dms->DeleteMigrationProject(
      MigrationProjectIdentifier => 'MyString',

    );

    # Results:
    my $MigrationProject = $DeleteMigrationProjectResponse->MigrationProject;

    # Returns a L<Paws::DMS::DeleteMigrationProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DeleteMigrationProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MigrationProjectIdentifier => Str

The name or Amazon Resource Name (ARN) of the migration project to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMigrationProject in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

