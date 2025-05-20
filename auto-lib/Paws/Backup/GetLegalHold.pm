
package Paws::Backup::GetLegalHold;
  use Moose;
  has LegalHoldId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'legalHoldId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLegalHold');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/legal-holds/{legalHoldId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::GetLegalHoldOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetLegalHold - Arguments for method GetLegalHold on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLegalHold on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method GetLegalHold.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLegalHold.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $GetLegalHoldOutput = $backup->GetLegalHold(
      LegalHoldId => 'Mystring',

    );

    # Results:
    my $CancelDescription      = $GetLegalHoldOutput->CancelDescription;
    my $CancellationDate       = $GetLegalHoldOutput->CancellationDate;
    my $CreationDate           = $GetLegalHoldOutput->CreationDate;
    my $Description            = $GetLegalHoldOutput->Description;
    my $LegalHoldArn           = $GetLegalHoldOutput->LegalHoldArn;
    my $LegalHoldId            = $GetLegalHoldOutput->LegalHoldId;
    my $RecoveryPointSelection = $GetLegalHoldOutput->RecoveryPointSelection;
    my $RetainRecordUntil      = $GetLegalHoldOutput->RetainRecordUntil;
    my $Status                 = $GetLegalHoldOutput->Status;
    my $Title                  = $GetLegalHoldOutput->Title;

    # Returns a L<Paws::Backup::GetLegalHoldOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/GetLegalHold>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LegalHoldId => Str

The ID of the legal hold.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLegalHold in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

