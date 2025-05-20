
package Paws::MailManager::StartArchiveSearch;
  use Moose;
  has ArchiveId => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::MailManager::ArchiveFilters');
  has FromTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', required => 1);
  has ToTimestamp => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartArchiveSearch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::StartArchiveSearchResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::StartArchiveSearch - Arguments for method StartArchiveSearch on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartArchiveSearch on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method StartArchiveSearch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartArchiveSearch.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $StartArchiveSearchResponse = $mail -manager->StartArchiveSearch(
      ArchiveId     => 'MyArchiveId',
      FromTimestamp => '1970-01-01T01:00:00',
      MaxResults    => 1,
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
    );

    # Results:
    my $SearchId = $StartArchiveSearchResponse->SearchId;

    # Returns a L<Paws::MailManager::StartArchiveSearchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/StartArchiveSearch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveId => Str

The identifier of the archive to search emails in.



=head2 Filters => L<Paws::MailManager::ArchiveFilters>

Criteria to filter which emails are included in the search results.



=head2 B<REQUIRED> FromTimestamp => Str

The start timestamp of the range to search emails from.



=head2 B<REQUIRED> MaxResults => Int

The maximum number of search results to return.



=head2 B<REQUIRED> ToTimestamp => Str

The end timestamp of the range to search emails from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartArchiveSearch in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

