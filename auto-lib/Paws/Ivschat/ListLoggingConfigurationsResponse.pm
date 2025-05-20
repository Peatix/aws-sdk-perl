
package Paws::Ivschat::ListLoggingConfigurationsResponse;
  use Moose;
  has LoggingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Ivschat::LoggingConfigurationSummary]', traits => ['NameInRequest'], request_name => 'loggingConfigurations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::ListLoggingConfigurationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggingConfigurations => ArrayRef[L<Paws::Ivschat::LoggingConfigurationSummary>]

List of the matching logging configurations (summary information only).
There is only one type of destination (C<cloudWatchLogs>, C<firehose>,
or C<s3>) in a C<destinationConfiguration>.


=head2 NextToken => Str

If there are more logging configurations than C<maxResults>, use
C<nextToken> in the request to get the next set.


=head2 _request_id => Str


=cut

