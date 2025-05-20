
package Paws::RDS::DeleteDBClusterAutomatedBackup;
  use Moose;
  has DbClusterResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBClusterAutomatedBackup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DeleteDBClusterAutomatedBackupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBClusterAutomatedBackupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBClusterAutomatedBackup - Arguments for method DeleteDBClusterAutomatedBackup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBClusterAutomatedBackup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteDBClusterAutomatedBackup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBClusterAutomatedBackup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DeleteDBClusterAutomatedBackupResult =
      $rds->DeleteDBClusterAutomatedBackup(
      DbClusterResourceId => 'MyString',

      );

    # Results:
    my $DBClusterAutomatedBackup =
      $DeleteDBClusterAutomatedBackupResult->DBClusterAutomatedBackup;

    # Returns a L<Paws::RDS::DeleteDBClusterAutomatedBackupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBClusterAutomatedBackup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DbClusterResourceId => Str

The identifier for the source DB cluster, which can't be changed and
which is unique to an Amazon Web Services Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBClusterAutomatedBackup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

