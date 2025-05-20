
package Paws::MailManager::StartArchiveExport;
  use Moose;
  has ArchiveId => (is => 'ro', isa => 'Str', required => 1);
  has ExportDestinationConfiguration => (is => 'ro', isa => 'Paws::MailManager::ExportDestinationConfiguration', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::MailManager::ArchiveFilters');
  has FromTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has IncludeMetadata => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has ToTimestamp => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartArchiveExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::StartArchiveExportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::StartArchiveExport - Arguments for method StartArchiveExport on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartArchiveExport on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method StartArchiveExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartArchiveExport.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $StartArchiveExportResponse = $mail -manager->StartArchiveExport(
      ArchiveId                      => 'MyArchiveId',
      ExportDestinationConfiguration => {
        S3 => {
          S3Location => 'MyS3Location',    # OPTIONAL
        },    # OPTIONAL
      },
      FromTimestamp => '1970-01-01T01:00:00',
      ToTimestamp   => '1970-01-01T01:00:00',
      Filters       => {
        Include => [
          {
            BooleanExpression => {
              Evaluate => {
                Attribute =>
                  'HAS_ATTACHMENTS',    # values: HAS_ATTACHMENTS; OPTIONAL
              },
              Operator => 'IS_TRUE',    # values: IS_TRUE, IS_FALSE

            },    # OPTIONAL
            StringExpression => {
              Evaluate => {
                Attribute => 'TO'
                , # values: TO, FROM, CC, SUBJECT, ENVELOPE_TO, ENVELOPE_FROM; OPTIONAL
              },
              Operator => 'CONTAINS',    # values: CONTAINS
              Values   => [
                'MyStringValue', ...     # min: 1, max: 2048
              ],    # min: 1, max: 10

            },    # OPTIONAL
          },
          ...
        ],    # max: 10; OPTIONAL
        Unless => [
          {
            BooleanExpression => {
              Evaluate => {
                Attribute =>
                  'HAS_ATTACHMENTS',    # values: HAS_ATTACHMENTS; OPTIONAL
              },
              Operator => 'IS_TRUE',    # values: IS_TRUE, IS_FALSE

            },    # OPTIONAL
            StringExpression => {
              Evaluate => {
                Attribute => 'TO'
                , # values: TO, FROM, CC, SUBJECT, ENVELOPE_TO, ENVELOPE_FROM; OPTIONAL
              },
              Operator => 'CONTAINS',    # values: CONTAINS
              Values   => [
                'MyStringValue', ...     # min: 1, max: 2048
              ],    # min: 1, max: 10

            },    # OPTIONAL
          },
          ...
        ],    # max: 10; OPTIONAL
      },    # OPTIONAL
      IncludeMetadata => 1,    # OPTIONAL
      MaxResults      => 1,    # OPTIONAL
    );

    # Results:
    my $ExportId = $StartArchiveExportResponse->ExportId;

    # Returns a L<Paws::MailManager::StartArchiveExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/StartArchiveExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveId => Str

The identifier of the archive to export emails from.



=head2 B<REQUIRED> ExportDestinationConfiguration => L<Paws::MailManager::ExportDestinationConfiguration>

Details on where to deliver the exported email data.



=head2 Filters => L<Paws::MailManager::ArchiveFilters>

Criteria to filter which emails are included in the export.



=head2 B<REQUIRED> FromTimestamp => Str

The start of the timestamp range to include emails from.



=head2 IncludeMetadata => Bool

Whether to include message metadata as JSON files in the export.



=head2 MaxResults => Int

The maximum number of email items to include in the export.



=head2 B<REQUIRED> ToTimestamp => Str

The end of the timestamp range to include emails from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartArchiveExport in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

