
package Paws::Backup::CreateLegalHold;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has RecoveryPointSelection => (is => 'ro', isa => 'Paws::Backup::RecoveryPointSelection');
  has Tags => (is => 'ro', isa => 'Paws::Backup::Tags');
  has Title => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLegalHold');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/legal-holds/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::CreateLegalHoldOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateLegalHold - Arguments for method CreateLegalHold on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLegalHold on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method CreateLegalHold.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLegalHold.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $CreateLegalHoldOutput = $backup->CreateLegalHold(
      Description            => 'Mystring',
      Title                  => 'Mystring',
      IdempotencyToken       => 'Mystring',    # OPTIONAL
      RecoveryPointSelection => {
        DateRange => {
          FromDate => '1970-01-01T01:00:00',
          ToDate   => '1970-01-01T01:00:00',

        },                                     # OPTIONAL
        ResourceIdentifiers => [ 'Mystring', ... ],    # OPTIONAL
        VaultNames          => [ 'Mystring', ... ],    # OPTIONAL
      },    # OPTIONAL
      Tags => { 'MyTagKey' => 'MyTagValue', },    # OPTIONAL
    );

    # Results:
    my $CreationDate           = $CreateLegalHoldOutput->CreationDate;
    my $Description            = $CreateLegalHoldOutput->Description;
    my $LegalHoldArn           = $CreateLegalHoldOutput->LegalHoldArn;
    my $LegalHoldId            = $CreateLegalHoldOutput->LegalHoldId;
    my $RecoveryPointSelection = $CreateLegalHoldOutput->RecoveryPointSelection;
    my $Status                 = $CreateLegalHoldOutput->Status;
    my $Title                  = $CreateLegalHoldOutput->Title;

    # Returns a L<Paws::Backup::CreateLegalHoldOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/CreateLegalHold>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

The description of the legal hold.



=head2 IdempotencyToken => Str

This is a user-chosen string used to distinguish between otherwise
identical calls. Retrying a successful request with the same
idempotency token results in a success message with no action taken.



=head2 RecoveryPointSelection => L<Paws::Backup::RecoveryPointSelection>

The criteria to assign a set of resources, such as resource types or
backup vaults.



=head2 Tags => L<Paws::Backup::Tags>

Optional tags to include. A tag is a key-value pair you can use to
manage, filter, and search for your resources. Allowed characters
include UTF-8 letters, numbers, spaces, and the following characters: +
- = . _ : /.



=head2 B<REQUIRED> Title => Str

The title of the legal hold.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLegalHold in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

