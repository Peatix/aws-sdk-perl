
package Paws::AppTest::GetTestCaseResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastUpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdateTime', required => 1);
  has LatestVersion => (is => 'ro', isa => 'Paws::AppTest::TestCaseLatestVersion', traits => ['NameInRequest'], request_name => 'latestVersion', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::Step]', traits => ['NameInRequest'], request_name => 'steps', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppTest::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TestCaseArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testCaseArn', required => 1);
  has TestCaseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testCaseId', required => 1);
  has TestCaseVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'testCaseVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::GetTestCaseResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The creation time of the test case.


=head2 Description => Str

The description of the test case.


=head2 B<REQUIRED> LastUpdateTime => Str

The last update time of the test case.


=head2 B<REQUIRED> LatestVersion => L<Paws::AppTest::TestCaseLatestVersion>

The latest version of the test case.


=head2 B<REQUIRED> Name => Str

The name of the test case.


=head2 B<REQUIRED> Status => Str

The status of the test case.

Valid values are: C<"Active">, C<"Deleting">
=head2 StatusReason => Str

The status reason of the test case.


=head2 B<REQUIRED> Steps => ArrayRef[L<Paws::AppTest::Step>]

The steps of the test case.


=head2 Tags => L<Paws::AppTest::TagMap>

The tags of the test case.


=head2 B<REQUIRED> TestCaseArn => Str

The Amazon Resource Name (ARN) of the test case.


=head2 B<REQUIRED> TestCaseId => Str

The response test ID of the test case.


=head2 B<REQUIRED> TestCaseVersion => Int

The case version of the test case.


=head2 _request_id => Str


=cut

