
package Paws::Backup::GetRestoreTestingSelection;
  use Moose;
  has RestoreTestingPlanName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RestoreTestingPlanName', required => 1);
  has RestoreTestingSelectionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RestoreTestingSelectionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRestoreTestingSelection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::GetRestoreTestingSelectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetRestoreTestingSelection - Arguments for method GetRestoreTestingSelection on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRestoreTestingSelection on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method GetRestoreTestingSelection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRestoreTestingSelection.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $GetRestoreTestingSelectionOutput = $backup->GetRestoreTestingSelection(
      RestoreTestingPlanName      => 'MyString',
      RestoreTestingSelectionName => 'MyString',

    );

    # Results:
    my $RestoreTestingSelection =
      $GetRestoreTestingSelectionOutput->RestoreTestingSelection;

    # Returns a L<Paws::Backup::GetRestoreTestingSelectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/GetRestoreTestingSelection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestoreTestingPlanName => Str

Required unique name of the restore testing plan.



=head2 B<REQUIRED> RestoreTestingSelectionName => Str

Required unique name of the restore testing selection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRestoreTestingSelection in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

