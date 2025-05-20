
package Paws::KafkaConnect::ListCustomPluginsResponse;
  use Moose;
  has CustomPlugins => (is => 'ro', isa => 'ArrayRef[Paws::KafkaConnect::CustomPluginSummary]', traits => ['NameInRequest'], request_name => 'customPlugins');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::ListCustomPluginsResponse

=head1 ATTRIBUTES


=head2 CustomPlugins => ArrayRef[L<Paws::KafkaConnect::CustomPluginSummary>]

An array of custom plugin descriptions.


=head2 NextToken => Str

If the response of a ListCustomPlugins operation is truncated, it will
include a NextToken. Send this NextToken in a subsequent request to
continue listing from where the previous operation left off.


=head2 _request_id => Str


=cut

