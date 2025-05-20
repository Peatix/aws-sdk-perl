
package Paws::CloudWatchLogs::DescribeConfigurationTemplatesResponse;
  use Moose;
  has ConfigurationTemplates => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::ConfigurationTemplate]', traits => ['NameInRequest'], request_name => 'configurationTemplates' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeConfigurationTemplatesResponse

=head1 ATTRIBUTES


=head2 ConfigurationTemplates => ArrayRef[L<Paws::CloudWatchLogs::ConfigurationTemplate>]

An array of objects, where each object describes one configuration
template that matches the filters that you specified in the request.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;