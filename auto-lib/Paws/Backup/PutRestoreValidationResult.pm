
package Paws::Backup::PutRestoreValidationResult;
  use Moose;
  has RestoreJobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restoreJobId', required => 1);
  has ValidationStatus => (is => 'ro', isa => 'Str', required => 1);
  has ValidationStatusMessage => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRestoreValidationResult');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-jobs/{restoreJobId}/validations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::PutRestoreValidationResult - Arguments for method PutRestoreValidationResult on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRestoreValidationResult on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method PutRestoreValidationResult.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRestoreValidationResult.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    $backup->PutRestoreValidationResult(
      RestoreJobId            => 'MyRestoreJobId',
      ValidationStatus        => 'FAILED',
      ValidationStatusMessage => 'Mystring',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/PutRestoreValidationResult>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestoreJobId => Str

This is a unique identifier of a restore job within Backup.



=head2 B<REQUIRED> ValidationStatus => Str

The status of your restore validation.

Valid values are: C<"FAILED">, C<"SUCCESSFUL">, C<"TIMED_OUT">, C<"VALIDATING">

=head2 ValidationStatusMessage => Str

This is an optional message string you can input to describe the
validation status for the restore test validation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRestoreValidationResult in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

