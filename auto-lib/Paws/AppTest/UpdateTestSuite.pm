
package Paws::AppTest::UpdateTestSuite;
  use Moose;
  has AfterSteps => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::Step]', traits => ['NameInRequest'], request_name => 'afterSteps');
  has BeforeSteps => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::Step]', traits => ['NameInRequest'], request_name => 'beforeSteps');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has TestCases => (is => 'ro', isa => 'Paws::AppTest::TestCases', traits => ['NameInRequest'], request_name => 'testCases');
  has TestSuiteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testSuiteId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTestSuite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testsuites/{testSuiteId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::UpdateTestSuiteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::UpdateTestSuite - Arguments for method UpdateTestSuite on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTestSuite on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method UpdateTestSuite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTestSuite.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $UpdateTestSuiteResponse = $apptest->UpdateTestSuite(
      TestSuiteId => 'MyIdentifier',
      AfterSteps  => [
        {
          Action => {
            CompareAction => {
              Input => {
                File => {
                  FileMetadata => {
                    DataSets => [
                      {
                        Ccsid  => 'MyString50',
                        Format =>
                          'FIXED',    # values: FIXED, VARIABLE, LINE_SEQUENTIAL
                        Length => 1,
                        Name   => 'MyString100',
                        Type   => 'PS',            # values: PS

                      },
                      ...
                    ],    # OPTIONAL
                    DatabaseCDC => {
                      SourceMetadata => {
                        CaptureTool => 'Precisely', # values: Precisely, AWS DMS
                        Type        => 'z/OS-DB2',  # values: z/OS-DB2

                      },
                      TargetMetadata => {
                        CaptureTool => 'Precisely', # values: Precisely, AWS DMS
                        Type        => 'PostgreSQL',    # values: PostgreSQL

                      },

                    },    # OPTIONAL
                  },
                  SourceLocation => 'MyVariable',
                  TargetLocation => 'MyVariable',

                },    # OPTIONAL
              },
              Output => {
                File => {
                  FileLocation => 'MyS3Uri',    # max: 1024; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            MainframeAction => {
              ActionType => {
                Batch => {
                  BatchJobName       => 'MyVariable',
                  BatchJobParameters => { 'MyString' => 'MyString', }
                  ,                                                # OPTIONAL
                  ExportDataSetNames => [ 'MyString100', ... ],    # OPTIONAL
                },    # OPTIONAL
                Tn3270 => {
                  Script => {
                    ScriptLocation => 'MyS3Uri',     # max: 1024; OPTIONAL
                    Type           => 'Selenium',    # values: Selenium

                  },
                  ExportDataSetNames => [ 'MyString100', ... ],    # OPTIONAL
                },    # OPTIONAL
              },
              Resource   => 'MyVariable',
              Properties => { DmsTaskArn => 'MyVariable', },    # OPTIONAL
            },    # OPTIONAL
            ResourceAction => {
              CloudFormationAction => {
                Resource   => 'MyVariable',
                ActionType => 'Create',       # values: Create, Delete; OPTIONAL
              },    # OPTIONAL
              M2ManagedApplicationAction => {
                ActionType => 'Configure',    # values: Configure, Deconfigure
                Resource   => 'MyVariable',
                Properties => {
                  ForceStop             => 1,              # OPTIONAL
                  ImportDataSetLocation => 'MyVariable',
                },    # OPTIONAL
              },    # OPTIONAL
              M2NonManagedApplicationAction => {
                ActionType => 'Configure',    # values: Configure, Deconfigure
                Resource   => 'MyVariable',

              },    # OPTIONAL
            },    # OPTIONAL
          },
          Name        => 'MyResourceName',
          Description => 'MyResourceDescription',    # max: 1000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      BeforeSteps => [
        {
          Action => {
            CompareAction => {
              Input => {
                File => {
                  FileMetadata => {
                    DataSets => [
                      {
                        Ccsid  => 'MyString50',
                        Format =>
                          'FIXED',    # values: FIXED, VARIABLE, LINE_SEQUENTIAL
                        Length => 1,
                        Name   => 'MyString100',
                        Type   => 'PS',            # values: PS

                      },
                      ...
                    ],    # OPTIONAL
                    DatabaseCDC => {
                      SourceMetadata => {
                        CaptureTool => 'Precisely', # values: Precisely, AWS DMS
                        Type        => 'z/OS-DB2',  # values: z/OS-DB2

                      },
                      TargetMetadata => {
                        CaptureTool => 'Precisely', # values: Precisely, AWS DMS
                        Type        => 'PostgreSQL',    # values: PostgreSQL

                      },

                    },    # OPTIONAL
                  },
                  SourceLocation => 'MyVariable',
                  TargetLocation => 'MyVariable',

                },    # OPTIONAL
              },
              Output => {
                File => {
                  FileLocation => 'MyS3Uri',    # max: 1024; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            MainframeAction => {
              ActionType => {
                Batch => {
                  BatchJobName       => 'MyVariable',
                  BatchJobParameters => { 'MyString' => 'MyString', }
                  ,                                                # OPTIONAL
                  ExportDataSetNames => [ 'MyString100', ... ],    # OPTIONAL
                },    # OPTIONAL
                Tn3270 => {
                  Script => {
                    ScriptLocation => 'MyS3Uri',     # max: 1024; OPTIONAL
                    Type           => 'Selenium',    # values: Selenium

                  },
                  ExportDataSetNames => [ 'MyString100', ... ],    # OPTIONAL
                },    # OPTIONAL
              },
              Resource   => 'MyVariable',
              Properties => { DmsTaskArn => 'MyVariable', },    # OPTIONAL
            },    # OPTIONAL
            ResourceAction => {
              CloudFormationAction => {
                Resource   => 'MyVariable',
                ActionType => 'Create',       # values: Create, Delete; OPTIONAL
              },    # OPTIONAL
              M2ManagedApplicationAction => {
                ActionType => 'Configure',    # values: Configure, Deconfigure
                Resource   => 'MyVariable',
                Properties => {
                  ForceStop             => 1,              # OPTIONAL
                  ImportDataSetLocation => 'MyVariable',
                },    # OPTIONAL
              },    # OPTIONAL
              M2NonManagedApplicationAction => {
                ActionType => 'Configure',    # values: Configure, Deconfigure
                Resource   => 'MyVariable',

              },    # OPTIONAL
            },    # OPTIONAL
          },
          Name        => 'MyResourceName',
          Description => 'MyResourceDescription',    # max: 1000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Description => 'MyResourceDescription',    # OPTIONAL
      TestCases   => {
        Sequential => [ 'MyIdentifier', ... ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $TestSuiteId      = $UpdateTestSuiteResponse->TestSuiteId;
    my $TestSuiteVersion = $UpdateTestSuiteResponse->TestSuiteVersion;

    # Returns a L<Paws::AppTest::UpdateTestSuiteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/UpdateTestSuite>

=head1 ATTRIBUTES


=head2 AfterSteps => ArrayRef[L<Paws::AppTest::Step>]

The after steps of the test suite.



=head2 BeforeSteps => ArrayRef[L<Paws::AppTest::Step>]

The before steps for the test suite.



=head2 Description => Str

The description of the test suite.



=head2 TestCases => L<Paws::AppTest::TestCases>

The test cases in the test suite.



=head2 B<REQUIRED> TestSuiteId => Str

The test suite ID of the test suite.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTestSuite in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

