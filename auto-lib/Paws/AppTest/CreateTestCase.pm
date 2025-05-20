
package Paws::AppTest::CreateTestCase;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::Step]', traits => ['NameInRequest'], request_name => 'steps', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppTest::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTestCase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testcase');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::CreateTestCaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::CreateTestCase - Arguments for method CreateTestCase on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTestCase on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method CreateTestCase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTestCase.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $CreateTestCaseResponse = $apptest->CreateTestCase(
      Name  => 'MyResourceName',
      Steps => [
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
      ],
      ClientToken => 'MyIdempotencyTokenString',    # OPTIONAL
      Description => 'MyResourceDescription',       # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $TestCaseId      = $CreateTestCaseResponse->TestCaseId;
    my $TestCaseVersion = $CreateTestCaseResponse->TestCaseVersion;

    # Returns a L<Paws::AppTest::CreateTestCaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/CreateTestCase>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token of the test case.



=head2 Description => Str

The description of the test case.



=head2 B<REQUIRED> Name => Str

The name of the test case.



=head2 B<REQUIRED> Steps => ArrayRef[L<Paws::AppTest::Step>]

The steps in the test case.



=head2 Tags => L<Paws::AppTest::TagMap>

The specified tags of the test case.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTestCase in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

