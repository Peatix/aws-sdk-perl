
package Paws::AppTest::GetTestSuiteResponse;
  use Moose;
  has AfterSteps => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::Step]', traits => ['NameInRequest'], request_name => 'afterSteps', required => 1);
  has BeforeSteps => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::Step]', traits => ['NameInRequest'], request_name => 'beforeSteps', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastUpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdateTime', required => 1);
  has LatestVersion => (is => 'ro', isa => 'Paws::AppTest::TestSuiteLatestVersion', traits => ['NameInRequest'], request_name => 'latestVersion', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has Tags => (is => 'ro', isa => 'Paws::AppTest::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TestCases => (is => 'ro', isa => 'Paws::AppTest::TestCases', traits => ['NameInRequest'], request_name => 'testCases', required => 1);
  has TestSuiteArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSuiteArn', required => 1);
  has TestSuiteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSuiteId', required => 1);
  has TestSuiteVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'testSuiteVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::GetTestSuiteResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AfterSteps => ArrayRef[L<Paws::AppTest::Step>]

The after steps of the test suite.


=head2 B<REQUIRED> BeforeSteps => ArrayRef[L<Paws::AppTest::Step>]

The before steps of the test suite.


=head2 B<REQUIRED> CreationTime => Str

The creation time of the test suite.


=head2 Description => Str

The description of the test suite.


=head2 B<REQUIRED> LastUpdateTime => Str

The last update time of the test suite.


=head2 B<REQUIRED> LatestVersion => L<Paws::AppTest::TestSuiteLatestVersion>

The latest version of the test suite.


=head2 B<REQUIRED> Name => Str

The name of the test suite.


=head2 Status => Str

The status of the test suite.

Valid values are: C<"Creating">, C<"Updating">, C<"Active">, C<"Failed">, C<"Deleting">
=head2 StatusReason => Str

The status reason of the test suite.


=head2 Tags => L<Paws::AppTest::TagMap>

The tags of the test suite.


=head2 B<REQUIRED> TestCases => L<Paws::AppTest::TestCases>

The test cases of the test suite.


=head2 B<REQUIRED> TestSuiteArn => Str

The test suite Amazon Resource Name (ARN).


=head2 B<REQUIRED> TestSuiteId => Str

The response ID of the test suite.


=head2 B<REQUIRED> TestSuiteVersion => Int

The version of the test suite.


=head2 _request_id => Str


=cut

