
package Paws::DMS::StartDataMigration;
  use Moose;
  has DataMigrationIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has StartType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDataMigration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::StartDataMigrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartDataMigration - Arguments for method StartDataMigration on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDataMigration on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method StartDataMigration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDataMigration.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $StartDataMigrationResponse = $dms->StartDataMigration(
      DataMigrationIdentifier => 'MyString',
      StartType               => 'reload-target',

    );

    # Results:
    my $DataMigration = $StartDataMigrationResponse->DataMigration;

    # Returns a L<Paws::DMS::StartDataMigrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/StartDataMigration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataMigrationIdentifier => Str

The identifier (name or ARN) of the data migration to start.



=head2 B<REQUIRED> StartType => Str

Specifies the start type for the data migration. Valid values include
C<start-replication>, C<reload-target>, and C<resume-processing>.

Valid values are: C<"reload-target">, C<"resume-processing">, C<"start-replication">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDataMigration in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

