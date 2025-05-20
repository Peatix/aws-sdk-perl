
package Paws::Config::ListConfigurationRecordersResponse;
  use Moose;
  has ConfigurationRecorderSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigurationRecorderSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListConfigurationRecordersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationRecorderSummaries => ArrayRef[L<Paws::Config::ConfigurationRecorderSummary>]

A list of C<ConfigurationRecorderSummary> objects that includes.


=head2 NextToken => Str

The C<NextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;