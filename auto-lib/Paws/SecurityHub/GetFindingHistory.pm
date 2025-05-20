
package Paws::SecurityHub::GetFindingHistory;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has FindingIdentifier => (is => 'ro', isa => 'Paws::SecurityHub::AwsSecurityFindingIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFindingHistory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findingHistory/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::GetFindingHistoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetFindingHistory - Arguments for method GetFindingHistory on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFindingHistory on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetFindingHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFindingHistory.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetFindingHistoryResponse = $securityhub->GetFindingHistory(
      FindingIdentifier => {
        Id         => 'MyNonEmptyString',
        ProductArn => 'MyNonEmptyString',

      },
      EndTime    => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyNextToken',            # OPTIONAL
      StartTime  => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetFindingHistoryResponse->NextToken;
    my $Records   = $GetFindingHistoryResponse->Records;

    # Returns a L<Paws::SecurityHub::GetFindingHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetFindingHistory>

=head1 ATTRIBUTES


=head2 EndTime => Str

An ISO 8601-formatted timestamp that indicates the end time of the
requested finding history.

If you provide values for both C<StartTime> and C<EndTime>, Security
Hub returns finding history for the specified time period. If you
provide a value for C<StartTime> but not for C<EndTime>, Security Hub
returns finding history from the C<StartTime> to the time at which the
API is called. If you provide a value for C<EndTime> but not for
C<StartTime>, Security Hub returns finding history from the CreatedAt
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_AwsSecurityFindingFilters.html#securityhub-Type-AwsSecurityFindingFilters-CreatedAt)
timestamp of the finding to the C<EndTime>. If you provide neither
C<StartTime> nor C<EndTime>, Security Hub returns finding history from
the CreatedAt timestamp of the finding to the time at which the API is
called. In all of these scenarios, the response is limited to 100
results, and the maximum time period is limited to 90 days.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).



=head2 B<REQUIRED> FindingIdentifier => L<Paws::SecurityHub::AwsSecurityFindingIdentifier>





=head2 MaxResults => Int

The maximum number of results to be returned. If you donE<rsquo>t
provide it, Security Hub returns up to 100 results of finding history.



=head2 NextToken => Str

A token for pagination purposes. Provide C<NULL> as the initial value.
In subsequent requests, provide the token included in the response to
get up to an additional 100 results of finding history. If you
donE<rsquo>t provide C<NextToken>, Security Hub returns up to 100
results of finding history for each request.



=head2 StartTime => Str

A timestamp that indicates the start time of the requested finding
history.

If you provide values for both C<StartTime> and C<EndTime>, Security
Hub returns finding history for the specified time period. If you
provide a value for C<StartTime> but not for C<EndTime>, Security Hub
returns finding history from the C<StartTime> to the time at which the
API is called. If you provide a value for C<EndTime> but not for
C<StartTime>, Security Hub returns finding history from the CreatedAt
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_AwsSecurityFindingFilters.html#securityhub-Type-AwsSecurityFindingFilters-CreatedAt)
timestamp of the finding to the C<EndTime>. If you provide neither
C<StartTime> nor C<EndTime>, Security Hub returns finding history from
the CreatedAt timestamp of the finding to the time at which the API is
called. In all of these scenarios, the response is limited to 100
results, and the maximum time period is limited to 90 days.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFindingHistory in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

