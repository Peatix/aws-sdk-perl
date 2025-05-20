
package Paws::AppTest::UpdateTestConfigurationResponse;
  use Moose;
  has TestConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testConfigurationId', required => 1);
  has TestConfigurationVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'testConfigurationVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::UpdateTestConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestConfigurationId => Str

The configuration ID of the test configuration.


=head2 B<REQUIRED> TestConfigurationVersion => Int

The configuration version of the test configuration.


=head2 _request_id => Str


=cut

