package Paws::AppTest;
  use Moose;
  sub service { 'apptest' }
  sub signing_name { 'apptest' }
  sub version { '2022-12-06' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateTestCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::CreateTestCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTestConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::CreateTestConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTestSuite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::CreateTestSuite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTestCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::DeleteTestCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTestConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::DeleteTestConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTestRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::DeleteTestRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTestSuite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::DeleteTestSuite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTestCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::GetTestCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTestConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::GetTestConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTestRunStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::GetTestRunStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTestSuite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::GetTestSuite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTestCases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::ListTestCases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTestConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::ListTestConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTestRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::ListTestRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTestRunSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::ListTestRunSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTestRunTestCases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::ListTestRunTestCases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTestSuites {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::ListTestSuites', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTestRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::StartTestRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTestCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::UpdateTestCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTestConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::UpdateTestConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTestSuite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppTest::UpdateTestSuite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllTestCases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTestCases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTestCases(@_, nextToken => $next_result->nextToken);
        push @{ $result->testCases }, @{ $next_result->testCases };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'testCases') foreach (@{ $result->testCases });
        $result = $self->ListTestCases(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'testCases') foreach (@{ $result->testCases });
    }

    return undef
  }
  sub ListAllTestConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTestConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTestConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->testConfigurations }, @{ $next_result->testConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'testConfigurations') foreach (@{ $result->testConfigurations });
        $result = $self->ListTestConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'testConfigurations') foreach (@{ $result->testConfigurations });
    }

    return undef
  }
  sub ListAllTestRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTestRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTestRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->testRuns }, @{ $next_result->testRuns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'testRuns') foreach (@{ $result->testRuns });
        $result = $self->ListTestRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'testRuns') foreach (@{ $result->testRuns });
    }

    return undef
  }
  sub ListAllTestRunSteps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTestRunSteps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTestRunSteps(@_, nextToken => $next_result->nextToken);
        push @{ $result->testRunSteps }, @{ $next_result->testRunSteps };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'testRunSteps') foreach (@{ $result->testRunSteps });
        $result = $self->ListTestRunSteps(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'testRunSteps') foreach (@{ $result->testRunSteps });
    }

    return undef
  }
  sub ListAllTestRunTestCases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTestRunTestCases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTestRunTestCases(@_, nextToken => $next_result->nextToken);
        push @{ $result->testRunTestCases }, @{ $next_result->testRunTestCases };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'testRunTestCases') foreach (@{ $result->testRunTestCases });
        $result = $self->ListTestRunTestCases(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'testRunTestCases') foreach (@{ $result->testRunTestCases });
    }

    return undef
  }
  sub ListAllTestSuites {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTestSuites(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTestSuites(@_, nextToken => $next_result->nextToken);
        push @{ $result->testSuites }, @{ $next_result->testSuites };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'testSuites') foreach (@{ $result->testSuites });
        $result = $self->ListTestSuites(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'testSuites') foreach (@{ $result->testSuites });
    }

    return undef
  }


  sub operations { qw/CreateTestCase CreateTestConfiguration CreateTestSuite DeleteTestCase DeleteTestConfiguration DeleteTestRun DeleteTestSuite GetTestCase GetTestConfiguration GetTestRunStep GetTestSuite ListTagsForResource ListTestCases ListTestConfigurations ListTestRuns ListTestRunSteps ListTestRunTestCases ListTestSuites StartTestRun TagResource UntagResource UpdateTestCase UpdateTestConfiguration UpdateTestSuite / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest - Perl Interface to AWS AWS Mainframe Modernization Application Testing

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppTest');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Mainframe Modernization Application Testing provides tools and
resources for automated functional equivalence testing for your
migration projects.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateTestCase

=over

=item Name => Str

=item Steps => ArrayRef[L<Paws::AppTest::Step>]

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::AppTest::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppTest::CreateTestCase>

Returns: a L<Paws::AppTest::CreateTestCaseResponse> instance

Creates a test case.


=head2 CreateTestConfiguration

=over

=item Name => Str

=item Resources => ArrayRef[L<Paws::AppTest::Resource>]

=item [ClientToken => Str]

=item [Description => Str]

=item [Properties => L<Paws::AppTest::Properties>]

=item [ServiceSettings => L<Paws::AppTest::ServiceSettings>]

=item [Tags => L<Paws::AppTest::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppTest::CreateTestConfiguration>

Returns: a L<Paws::AppTest::CreateTestConfigurationResponse> instance

Creates a test configuration.


=head2 CreateTestSuite

=over

=item Name => Str

=item TestCases => L<Paws::AppTest::TestCases>

=item [AfterSteps => ArrayRef[L<Paws::AppTest::Step>]]

=item [BeforeSteps => ArrayRef[L<Paws::AppTest::Step>]]

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::AppTest::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppTest::CreateTestSuite>

Returns: a L<Paws::AppTest::CreateTestSuiteResponse> instance

Creates a test suite.


=head2 DeleteTestCase

=over

=item TestCaseId => Str


=back

Each argument is described in detail in: L<Paws::AppTest::DeleteTestCase>

Returns: a L<Paws::AppTest::DeleteTestCaseResponse> instance

Deletes a test case.


=head2 DeleteTestConfiguration

=over

=item TestConfigurationId => Str


=back

Each argument is described in detail in: L<Paws::AppTest::DeleteTestConfiguration>

Returns: a L<Paws::AppTest::DeleteTestConfigurationResponse> instance

Deletes a test configuration.


=head2 DeleteTestRun

=over

=item TestRunId => Str


=back

Each argument is described in detail in: L<Paws::AppTest::DeleteTestRun>

Returns: a L<Paws::AppTest::DeleteTestRunResponse> instance

Deletes a test run.


=head2 DeleteTestSuite

=over

=item TestSuiteId => Str


=back

Each argument is described in detail in: L<Paws::AppTest::DeleteTestSuite>

Returns: a L<Paws::AppTest::DeleteTestSuiteResponse> instance

Deletes a test suite.


=head2 GetTestCase

=over

=item TestCaseId => Str

=item [TestCaseVersion => Int]


=back

Each argument is described in detail in: L<Paws::AppTest::GetTestCase>

Returns: a L<Paws::AppTest::GetTestCaseResponse> instance

Gets a test case.


=head2 GetTestConfiguration

=over

=item TestConfigurationId => Str

=item [TestConfigurationVersion => Int]


=back

Each argument is described in detail in: L<Paws::AppTest::GetTestConfiguration>

Returns: a L<Paws::AppTest::GetTestConfigurationResponse> instance

Gets a test configuration.


=head2 GetTestRunStep

=over

=item StepName => Str

=item TestRunId => Str

=item [TestCaseId => Str]

=item [TestSuiteId => Str]


=back

Each argument is described in detail in: L<Paws::AppTest::GetTestRunStep>

Returns: a L<Paws::AppTest::GetTestRunStepResponse> instance

Gets a test run step.


=head2 GetTestSuite

=over

=item TestSuiteId => Str

=item [TestSuiteVersion => Int]


=back

Each argument is described in detail in: L<Paws::AppTest::GetTestSuite>

Returns: a L<Paws::AppTest::GetTestSuiteResponse> instance

Gets a test suite.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AppTest::ListTagsForResource>

Returns: a L<Paws::AppTest::ListTagsForResourceResponse> instance

Lists tags for a resource.


=head2 ListTestCases

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TestCaseIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::AppTest::ListTestCases>

Returns: a L<Paws::AppTest::ListTestCasesResponse> instance

Lists test cases.


=head2 ListTestConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TestConfigurationIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::AppTest::ListTestConfigurations>

Returns: a L<Paws::AppTest::ListTestConfigurationsResponse> instance

Lists test configurations.


=head2 ListTestRuns

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TestRunIds => ArrayRef[Str|Undef]]

=item [TestSuiteId => Str]


=back

Each argument is described in detail in: L<Paws::AppTest::ListTestRuns>

Returns: a L<Paws::AppTest::ListTestRunsResponse> instance

Lists test runs.


=head2 ListTestRunSteps

=over

=item TestRunId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TestCaseId => Str]

=item [TestSuiteId => Str]


=back

Each argument is described in detail in: L<Paws::AppTest::ListTestRunSteps>

Returns: a L<Paws::AppTest::ListTestRunStepsResponse> instance

Lists test run steps.


=head2 ListTestRunTestCases

=over

=item TestRunId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppTest::ListTestRunTestCases>

Returns: a L<Paws::AppTest::ListTestRunTestCasesResponse> instance

Lists test run test cases.


=head2 ListTestSuites

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TestSuiteIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::AppTest::ListTestSuites>

Returns: a L<Paws::AppTest::ListTestSuitesResponse> instance

Lists test suites.


=head2 StartTestRun

=over

=item TestSuiteId => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::AppTest::TagMap>]

=item [TestConfigurationId => Str]


=back

Each argument is described in detail in: L<Paws::AppTest::StartTestRun>

Returns: a L<Paws::AppTest::StartTestRunResponse> instance

Starts a test run.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::AppTest::TagMap>


=back

Each argument is described in detail in: L<Paws::AppTest::TagResource>

Returns: a L<Paws::AppTest::TagResourceResponse> instance

Specifies tags of a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppTest::UntagResource>

Returns: a L<Paws::AppTest::UntagResourceResponse> instance

Untags a resource.


=head2 UpdateTestCase

=over

=item TestCaseId => Str

=item [Description => Str]

=item [Steps => ArrayRef[L<Paws::AppTest::Step>]]


=back

Each argument is described in detail in: L<Paws::AppTest::UpdateTestCase>

Returns: a L<Paws::AppTest::UpdateTestCaseResponse> instance

Updates a test case.


=head2 UpdateTestConfiguration

=over

=item TestConfigurationId => Str

=item [Description => Str]

=item [Properties => L<Paws::AppTest::Properties>]

=item [Resources => ArrayRef[L<Paws::AppTest::Resource>]]

=item [ServiceSettings => L<Paws::AppTest::ServiceSettings>]


=back

Each argument is described in detail in: L<Paws::AppTest::UpdateTestConfiguration>

Returns: a L<Paws::AppTest::UpdateTestConfigurationResponse> instance

Updates a test configuration.


=head2 UpdateTestSuite

=over

=item TestSuiteId => Str

=item [AfterSteps => ArrayRef[L<Paws::AppTest::Step>]]

=item [BeforeSteps => ArrayRef[L<Paws::AppTest::Step>]]

=item [Description => Str]

=item [TestCases => L<Paws::AppTest::TestCases>]


=back

Each argument is described in detail in: L<Paws::AppTest::UpdateTestSuite>

Returns: a L<Paws::AppTest::UpdateTestSuiteResponse> instance

Updates a test suite.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllTestCases(sub { },[MaxResults => Int, NextToken => Str, TestCaseIds => ArrayRef[Str|Undef]])

=head2 ListAllTestCases([MaxResults => Int, NextToken => Str, TestCaseIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - testCases, passing the object as the first parameter, and the string 'testCases' as the second parameter 

If not, it will return a a L<Paws::AppTest::ListTestCasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTestConfigurations(sub { },[MaxResults => Int, NextToken => Str, TestConfigurationIds => ArrayRef[Str|Undef]])

=head2 ListAllTestConfigurations([MaxResults => Int, NextToken => Str, TestConfigurationIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - testConfigurations, passing the object as the first parameter, and the string 'testConfigurations' as the second parameter 

If not, it will return a a L<Paws::AppTest::ListTestConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTestRuns(sub { },[MaxResults => Int, NextToken => Str, TestRunIds => ArrayRef[Str|Undef], TestSuiteId => Str])

=head2 ListAllTestRuns([MaxResults => Int, NextToken => Str, TestRunIds => ArrayRef[Str|Undef], TestSuiteId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - testRuns, passing the object as the first parameter, and the string 'testRuns' as the second parameter 

If not, it will return a a L<Paws::AppTest::ListTestRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTestRunSteps(sub { },TestRunId => Str, [MaxResults => Int, NextToken => Str, TestCaseId => Str, TestSuiteId => Str])

=head2 ListAllTestRunSteps(TestRunId => Str, [MaxResults => Int, NextToken => Str, TestCaseId => Str, TestSuiteId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - testRunSteps, passing the object as the first parameter, and the string 'testRunSteps' as the second parameter 

If not, it will return a a L<Paws::AppTest::ListTestRunStepsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTestRunTestCases(sub { },TestRunId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTestRunTestCases(TestRunId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - testRunTestCases, passing the object as the first parameter, and the string 'testRunTestCases' as the second parameter 

If not, it will return a a L<Paws::AppTest::ListTestRunTestCasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTestSuites(sub { },[MaxResults => Int, NextToken => Str, TestSuiteIds => ArrayRef[Str|Undef]])

=head2 ListAllTestSuites([MaxResults => Int, NextToken => Str, TestSuiteIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - testSuites, passing the object as the first parameter, and the string 'testSuites' as the second parameter 

If not, it will return a a L<Paws::AppTest::ListTestSuitesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

