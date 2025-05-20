
package Paws::AppTest::ListTestConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TestConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::TestConfigurationSummary]', traits => ['NameInRequest'], request_name => 'testConfigurations', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::ListTestConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The next token in the test configurations.


=head2 B<REQUIRED> TestConfigurations => ArrayRef[L<Paws::AppTest::TestConfigurationSummary>]

The test configurations.


=head2 _request_id => Str


=cut

