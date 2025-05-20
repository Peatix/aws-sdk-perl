
package Paws::AppTest::CreateTestConfigurationResponse;
  use Moose;
  has TestConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testConfigurationId', required => 1);
  has TestConfigurationVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'testConfigurationVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::CreateTestConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestConfigurationId => Str

The test configuration ID.


=head2 B<REQUIRED> TestConfigurationVersion => Int

The test configuration version.


=head2 _request_id => Str


=cut

