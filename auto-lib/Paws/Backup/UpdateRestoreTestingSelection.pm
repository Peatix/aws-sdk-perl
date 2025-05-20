
package Paws::Backup::UpdateRestoreTestingSelection;
  use Moose;
  has RestoreTestingPlanName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RestoreTestingPlanName', required => 1);
  has RestoreTestingSelection => (is => 'ro', isa => 'Paws::Backup::RestoreTestingSelectionForUpdate', required => 1);
  has RestoreTestingSelectionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RestoreTestingSelectionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRestoreTestingSelection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::UpdateRestoreTestingSelectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateRestoreTestingSelection - Arguments for method UpdateRestoreTestingSelection on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRestoreTestingSelection on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method UpdateRestoreTestingSelection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRestoreTestingSelection.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $UpdateRestoreTestingSelectionOutput =
      $backup->UpdateRestoreTestingSelection(
      RestoreTestingPlanName  => 'MyString',
      RestoreTestingSelection => {
        IamRoleArn                  => 'MyString',
        ProtectedResourceArns       => [ 'Mystring', ... ],    # OPTIONAL
        ProtectedResourceConditions => {
          StringEquals => [
            {
              Key   => 'MyString',
              Value => 'MyString',

            },
            ...
          ],    # OPTIONAL
          StringNotEquals => [
            {
              Key   => 'MyString',
              Value => 'MyString',

            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RestoreMetadataOverrides => { 'MyString' => 'MyString', },    # OPTIONAL
        ValidationWindowHours    => 1,                                # OPTIONAL
      },
      RestoreTestingSelectionName => 'MyString',

      );

    # Results:
    my $CreationTime = $UpdateRestoreTestingSelectionOutput->CreationTime;
    my $RestoreTestingPlanArn =
      $UpdateRestoreTestingSelectionOutput->RestoreTestingPlanArn;
    my $RestoreTestingPlanName =
      $UpdateRestoreTestingSelectionOutput->RestoreTestingPlanName;
    my $RestoreTestingSelectionName =
      $UpdateRestoreTestingSelectionOutput->RestoreTestingSelectionName;
    my $UpdateTime = $UpdateRestoreTestingSelectionOutput->UpdateTime;

    # Returns a L<Paws::Backup::UpdateRestoreTestingSelectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/UpdateRestoreTestingSelection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestoreTestingPlanName => Str

The restore testing plan name is required to update the indicated
testing plan.



=head2 B<REQUIRED> RestoreTestingSelection => L<Paws::Backup::RestoreTestingSelectionForUpdate>

To update your restore testing selection, you can use either protected
resource ARNs or conditions, but not both. That is, if your selection
has C<ProtectedResourceArns>, requesting an update with the parameter
C<ProtectedResourceConditions> will be unsuccessful.



=head2 B<REQUIRED> RestoreTestingSelectionName => Str

The required restore testing selection name of the restore testing
selection you wish to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRestoreTestingSelection in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

