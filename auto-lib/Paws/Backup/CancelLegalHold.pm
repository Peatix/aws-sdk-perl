
package Paws::Backup::CancelLegalHold;
  use Moose;
  has CancelDescription => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'cancelDescription', required => 1);
  has LegalHoldId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'legalHoldId', required => 1);
  has RetainRecordInDays => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'retainRecordInDays');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelLegalHold');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/legal-holds/{legalHoldId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::CancelLegalHoldOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CancelLegalHold - Arguments for method CancelLegalHold on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelLegalHold on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method CancelLegalHold.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelLegalHold.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $CancelLegalHoldOutput = $backup->CancelLegalHold(
      CancelDescription  => 'Mystring',
      LegalHoldId        => 'Mystring',
      RetainRecordInDays => 1,            # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/CancelLegalHold>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CancelDescription => Str

A string the describes the reason for removing the legal hold.



=head2 B<REQUIRED> LegalHoldId => Str

The ID of the legal hold.



=head2 RetainRecordInDays => Int

The integer amount, in days, after which to remove legal hold.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelLegalHold in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

