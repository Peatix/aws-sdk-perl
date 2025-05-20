
package Paws::AppTest::GetTestConfigurationResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastUpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdateTime', required => 1);
  has LatestVersion => (is => 'ro', isa => 'Paws::AppTest::TestConfigurationLatestVersion', traits => ['NameInRequest'], request_name => 'latestVersion', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Properties => (is => 'ro', isa => 'Paws::AppTest::Properties', traits => ['NameInRequest'], request_name => 'properties', required => 1);
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::Resource]', traits => ['NameInRequest'], request_name => 'resources', required => 1);
  has ServiceSettings => (is => 'ro', isa => 'Paws::AppTest::ServiceSettings', traits => ['NameInRequest'], request_name => 'serviceSettings');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has Tags => (is => 'ro', isa => 'Paws::AppTest::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TestConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testConfigurationArn', required => 1);
  has TestConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testConfigurationId', required => 1);
  has TestConfigurationVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'testConfigurationVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::GetTestConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The creation time of the test configuration.


=head2 Description => Str

The description of the test configuration.


=head2 B<REQUIRED> LastUpdateTime => Str

The last update time of the test configuration.


=head2 B<REQUIRED> LatestVersion => L<Paws::AppTest::TestConfigurationLatestVersion>

The latest version of the test configuration.


=head2 B<REQUIRED> Name => Str

The test configuration name


=head2 B<REQUIRED> Properties => L<Paws::AppTest::Properties>

The properties of the test configuration.


=head2 B<REQUIRED> Resources => ArrayRef[L<Paws::AppTest::Resource>]

The resources of the test configuration.


=head2 ServiceSettings => L<Paws::AppTest::ServiceSettings>

The service settings of the test configuration.


=head2 B<REQUIRED> Status => Str

The status of the test configuration.

Valid values are: C<"Active">, C<"Deleting">
=head2 StatusReason => Str

The status reason of the test configuration.


=head2 Tags => L<Paws::AppTest::TagMap>

The tags of the test configuration.


=head2 B<REQUIRED> TestConfigurationArn => Str

The test configuration Amazon Resource Name (ARN).


=head2 B<REQUIRED> TestConfigurationId => Str

The response test configuration ID.


=head2 B<REQUIRED> TestConfigurationVersion => Int

The test configuration version.


=head2 _request_id => Str


=cut

