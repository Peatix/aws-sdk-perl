
package Paws::MailManager::CreateArchive;
  use Moose;
  has ArchiveName => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has Retention => (is => 'ro', isa => 'Paws::MailManager::ArchiveRetention');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::CreateArchiveResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateArchive - Arguments for method CreateArchive on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateArchive on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method CreateArchive.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateArchive.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $CreateArchiveResponse = $mail -manager->CreateArchive(
      ArchiveName => 'MyArchiveNameString',
      ClientToken => 'MyIdempotencyToken',    # OPTIONAL
      KmsKeyArn   => 'MyKmsKeyArn',           # OPTIONAL
      Retention   => {
        RetentionPeriod => 'THREE_MONTHS'
        , # values: THREE_MONTHS, SIX_MONTHS, NINE_MONTHS, ONE_YEAR, EIGHTEEN_MONTHS, TWO_YEARS, THIRTY_MONTHS, THREE_YEARS, FOUR_YEARS, FIVE_YEARS, SIX_YEARS, SEVEN_YEARS, EIGHT_YEARS, NINE_YEARS, TEN_YEARS, PERMANENT; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ArchiveId = $CreateArchiveResponse->ArchiveId;

    # Returns a L<Paws::MailManager::CreateArchiveResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/CreateArchive>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveName => Str

A unique name for the new archive.



=head2 ClientToken => Str

A unique token Amazon SES uses to recognize retries of this request.



=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key for encrypting emails in
the archive.



=head2 Retention => L<Paws::MailManager::ArchiveRetention>

The period for retaining emails in the archive before automatic
deletion.



=head2 Tags => ArrayRef[L<Paws::MailManager::Tag>]

The tags used to organize, track, or control access for the resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateArchive in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

