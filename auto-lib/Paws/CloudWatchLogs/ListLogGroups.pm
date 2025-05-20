
package Paws::CloudWatchLogs::ListLogGroups;
  use Moose;
  has AccountIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIdentifiers' );
  has IncludeLinkedAccounts => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeLinkedAccounts' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogGroupClass => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupClass' );
  has LogGroupNamePattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupNamePattern' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLogGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::ListLogGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListLogGroups - Arguments for method ListLogGroups on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLogGroups on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method ListLogGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLogGroups.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $ListLogGroupsResponse = $logs->ListLogGroups(
      AccountIdentifiers => [
        'MyAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      IncludeLinkedAccounts => 1,                               # OPTIONAL
      Limit                 => 1,                               # OPTIONAL
      LogGroupClass         => 'STANDARD',                      # OPTIONAL
      LogGroupNamePattern   => 'MyLogGroupNameRegexPattern',    # OPTIONAL
      NextToken             => 'MyNextToken',                   # OPTIONAL
    );

    # Results:
    my $LogGroups = $ListLogGroupsResponse->LogGroups;
    my $NextToken = $ListLogGroupsResponse->NextToken;

    # Returns a L<Paws::CloudWatchLogs::ListLogGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/ListLogGroups>

=head1 ATTRIBUTES


=head2 AccountIdentifiers => ArrayRef[Str|Undef]

When C<includeLinkedAccounts> is set to C<true>, use this parameter to
specify the list of accounts to search. You can specify as many as 20
account IDs in the array.



=head2 IncludeLinkedAccounts => Bool

If you are using a monitoring account, set this to C<true> to have the
operation return log groups in the accounts listed in
C<accountIdentifiers>.

If this parameter is set to C<true> and C<accountIdentifiers> contains
a null value, the operation returns all log groups in the monitoring
account and all log groups in all source accounts that are linked to
the monitoring account.

The default for this parameter is C<false>.



=head2 Limit => Int

The maximum number of log groups to return. If you omit this parameter,
the default is up to 50 log groups.



=head2 LogGroupClass => Str

Use this parameter to limit the results to only those log groups in the
specified log group class. If you omit this parameter, log groups of
all classes can be returned.

Valid values are: C<"STANDARD">, C<"INFREQUENT_ACCESS">, C<"DELIVERY">

=head2 LogGroupNamePattern => Str

Use this parameter to limit the returned log groups to only those with
names that match the pattern that you specify. This parameter is a
regular expression that can match prefixes and substrings, and supports
wildcard matching and matching multiple patterns, as in the following
examples.

=over

=item *

Use C<^> to match log group names by prefix.

=item *

For a substring match, specify the string to match. All matches are
case sensitive

=item *

To match multiple patterns, separate them with a C<|> as in the example
C<^/aws/lambda|discovery>

=back

You can specify as many as five different regular expression patterns
in this field, each of which must be between 3 and 24 characters. You
can include the C<^> symbol as many as five times, and include the C<|>
symbol as many as four times.



=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLogGroups in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

