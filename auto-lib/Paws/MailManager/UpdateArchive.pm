
package Paws::MailManager::UpdateArchive;
  use Moose;
  has ArchiveId => (is => 'ro', isa => 'Str', required => 1);
  has ArchiveName => (is => 'ro', isa => 'Str');
  has Retention => (is => 'ro', isa => 'Paws::MailManager::ArchiveRetention');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::UpdateArchiveResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::UpdateArchive - Arguments for method UpdateArchive on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateArchive on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method UpdateArchive.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateArchive.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $UpdateArchiveResponse = $mail -manager->UpdateArchive(
      ArchiveId   => 'MyArchiveIdString',
      ArchiveName => 'MyArchiveNameString',    # OPTIONAL
      Retention   => {
        RetentionPeriod => 'THREE_MONTHS'
        , # values: THREE_MONTHS, SIX_MONTHS, NINE_MONTHS, ONE_YEAR, EIGHTEEN_MONTHS, TWO_YEARS, THIRTY_MONTHS, THREE_YEARS, FOUR_YEARS, FIVE_YEARS, SIX_YEARS, SEVEN_YEARS, EIGHT_YEARS, NINE_YEARS, TEN_YEARS, PERMANENT; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/UpdateArchive>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveId => Str

The identifier of the archive to update.



=head2 ArchiveName => Str

A new, unique name for the archive.



=head2 Retention => L<Paws::MailManager::ArchiveRetention>

A new retention period for emails in the archive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateArchive in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

