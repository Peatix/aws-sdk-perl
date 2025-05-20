
package Paws::Backup::CreateRestoreTestingSelection;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has RestoreTestingPlanName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RestoreTestingPlanName', required => 1);
  has RestoreTestingSelection => (is => 'ro', isa => 'Paws::Backup::RestoreTestingSelectionForCreate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRestoreTestingSelection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-testing/plans/{RestoreTestingPlanName}/selections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::CreateRestoreTestingSelectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateRestoreTestingSelection - Arguments for method CreateRestoreTestingSelection on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRestoreTestingSelection on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method CreateRestoreTestingSelection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRestoreTestingSelection.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $CreateRestoreTestingSelectionOutput =
      $backup->CreateRestoreTestingSelection(
      RestoreTestingPlanName  => 'MyString',
      RestoreTestingSelection => {
        IamRoleArn                  => 'MyString',
        ProtectedResourceType       => 'MyString',
        RestoreTestingSelectionName => 'MyString',
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
      CreatorRequestId => 'MyString',                                 # OPTIONAL
      );

    # Results:
    my $CreationTime = $CreateRestoreTestingSelectionOutput->CreationTime;
    my $RestoreTestingPlanArn =
      $CreateRestoreTestingSelectionOutput->RestoreTestingPlanArn;
    my $RestoreTestingPlanName =
      $CreateRestoreTestingSelectionOutput->RestoreTestingPlanName;
    my $RestoreTestingSelectionName =
      $CreateRestoreTestingSelectionOutput->RestoreTestingSelectionName;

    # Returns a L<Paws::Backup::CreateRestoreTestingSelectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/CreateRestoreTestingSelection>

=head1 ATTRIBUTES


=head2 CreatorRequestId => Str

This is an optional unique string that identifies the request and
allows failed requests to be retried without the risk of running the
operation twice. If used, this parameter must contain 1 to 50
alphanumeric or '-_.' characters.



=head2 B<REQUIRED> RestoreTestingPlanName => Str

Input the restore testing plan name that was returned from the related
CreateRestoreTestingPlan request.



=head2 B<REQUIRED> RestoreTestingSelection => L<Paws::Backup::RestoreTestingSelectionForCreate>

This consists of C<RestoreTestingSelectionName>,
C<ProtectedResourceType>, and one of the following:

=over

=item *

C<ProtectedResourceArns>

=item *

C<ProtectedResourceConditions>

=back

Each protected resource type can have one single value.

A restore testing selection can include a wildcard value ("*") for
C<ProtectedResourceArns> along with C<ProtectedResourceConditions>.
Alternatively, you can include up to 30 specific protected resource
ARNs in C<ProtectedResourceArns>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRestoreTestingSelection in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

