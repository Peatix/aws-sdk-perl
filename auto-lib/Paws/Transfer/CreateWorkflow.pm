
package Paws::Transfer::CreateWorkflow;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has OnExceptionSteps => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::WorkflowStep]');
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::WorkflowStep]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkflow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::CreateWorkflowResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateWorkflow - Arguments for method CreateWorkflow on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkflow on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method CreateWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkflow.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $CreateWorkflowResponse = $transfer->CreateWorkflow(
      Steps => [
        {
          CopyStepDetails => {
            DestinationFileLocation => {
              EfsFileLocation => {
                FileSystemId => 'MyEfsFileSystemId',    # max: 128; OPTIONAL
                Path         => 'MyEfsPath',    # min: 1, max: 65536; OPTIONAL
              },    # OPTIONAL
              S3FileLocation => {
                Bucket => 'MyS3Bucket',    # min: 3, max: 63; OPTIONAL
                Key    => 'MyS3Key',       # max: 1024; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Name               => 'MyWorkflowStepName',     # max: 30; OPTIONAL
            OverwriteExisting  => 'TRUE',    # values: TRUE, FALSE; OPTIONAL
            SourceFileLocation => 'MySourceFileLocation',   # max: 256; OPTIONAL
          },    # OPTIONAL
          CustomStepDetails => {
            Name               => 'MyWorkflowStepName',     # max: 30; OPTIONAL
            SourceFileLocation => 'MySourceFileLocation',   # max: 256; OPTIONAL
            Target             => 'MyCustomStepTarget',     # max: 170; OPTIONAL
            TimeoutSeconds     => 1,    # min: 1, max: 1800; OPTIONAL
          },    # OPTIONAL
          DecryptStepDetails => {
            DestinationFileLocation => {
              EfsFileLocation => {
                FileSystemId => 'MyEfsFileSystemId',    # max: 128; OPTIONAL
                Path         => 'MyEfsPath',    # min: 1, max: 65536; OPTIONAL
              },    # OPTIONAL
              S3FileLocation => {
                Bucket => 'MyS3Bucket',    # min: 3, max: 63; OPTIONAL
                Key    => 'MyS3Key',       # max: 1024; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Type               => 'PGP',                    # values: PGP
            Name               => 'MyWorkflowStepName',     # max: 30; OPTIONAL
            OverwriteExisting  => 'TRUE',    # values: TRUE, FALSE; OPTIONAL
            SourceFileLocation => 'MySourceFileLocation',   # max: 256; OPTIONAL
          },    # OPTIONAL
          DeleteStepDetails => {
            Name               => 'MyWorkflowStepName',     # max: 30; OPTIONAL
            SourceFileLocation => 'MySourceFileLocation',   # max: 256; OPTIONAL
          },    # OPTIONAL
          TagStepDetails => {
            Name               => 'MyWorkflowStepName',     # max: 30; OPTIONAL
            SourceFileLocation => 'MySourceFileLocation',   # max: 256; OPTIONAL
            Tags               => [
              {
                Key   => 'MyS3TagKey',      # min: 1, max: 128
                Value => 'MyS3TagValue',    # max: 256

              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          Type => 'COPY', # values: COPY, CUSTOM, TAG, DELETE, DECRYPT; OPTIONAL
        },
        ...
      ],
      Description      => 'MyWorkflowDescription',    # OPTIONAL
      OnExceptionSteps => [
        {
          CopyStepDetails => {
            DestinationFileLocation => {
              EfsFileLocation => {
                FileSystemId => 'MyEfsFileSystemId',    # max: 128; OPTIONAL
                Path         => 'MyEfsPath',    # min: 1, max: 65536; OPTIONAL
              },    # OPTIONAL
              S3FileLocation => {
                Bucket => 'MyS3Bucket',    # min: 3, max: 63; OPTIONAL
                Key    => 'MyS3Key',       # max: 1024; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Name               => 'MyWorkflowStepName',     # max: 30; OPTIONAL
            OverwriteExisting  => 'TRUE',    # values: TRUE, FALSE; OPTIONAL
            SourceFileLocation => 'MySourceFileLocation',   # max: 256; OPTIONAL
          },    # OPTIONAL
          CustomStepDetails => {
            Name               => 'MyWorkflowStepName',     # max: 30; OPTIONAL
            SourceFileLocation => 'MySourceFileLocation',   # max: 256; OPTIONAL
            Target             => 'MyCustomStepTarget',     # max: 170; OPTIONAL
            TimeoutSeconds     => 1,    # min: 1, max: 1800; OPTIONAL
          },    # OPTIONAL
          DecryptStepDetails => {
            DestinationFileLocation => {
              EfsFileLocation => {
                FileSystemId => 'MyEfsFileSystemId',    # max: 128; OPTIONAL
                Path         => 'MyEfsPath',    # min: 1, max: 65536; OPTIONAL
              },    # OPTIONAL
              S3FileLocation => {
                Bucket => 'MyS3Bucket',    # min: 3, max: 63; OPTIONAL
                Key    => 'MyS3Key',       # max: 1024; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Type               => 'PGP',                    # values: PGP
            Name               => 'MyWorkflowStepName',     # max: 30; OPTIONAL
            OverwriteExisting  => 'TRUE',    # values: TRUE, FALSE; OPTIONAL
            SourceFileLocation => 'MySourceFileLocation',   # max: 256; OPTIONAL
          },    # OPTIONAL
          DeleteStepDetails => {
            Name               => 'MyWorkflowStepName',     # max: 30; OPTIONAL
            SourceFileLocation => 'MySourceFileLocation',   # max: 256; OPTIONAL
          },    # OPTIONAL
          TagStepDetails => {
            Name               => 'MyWorkflowStepName',     # max: 30; OPTIONAL
            SourceFileLocation => 'MySourceFileLocation',   # max: 256; OPTIONAL
            Tags               => [
              {
                Key   => 'MyS3TagKey',      # min: 1, max: 128
                Value => 'MyS3TagValue',    # max: 256

              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
          Type => 'COPY', # values: COPY, CUSTOM, TAG, DELETE, DECRYPT; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $WorkflowId = $CreateWorkflowResponse->WorkflowId;

    # Returns a L<Paws::Transfer::CreateWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/CreateWorkflow>

=head1 ATTRIBUTES


=head2 Description => Str

A textual description for the workflow.



=head2 OnExceptionSteps => ArrayRef[L<Paws::Transfer::WorkflowStep>]

Specifies the steps (actions) to take if errors are encountered during
execution of the workflow.

For custom steps, the Lambda function needs to send C<FAILURE> to the
call back API to kick off the exception steps. Additionally, if the
Lambda does not send C<SUCCESS> before it times out, the exception
steps are executed.



=head2 B<REQUIRED> Steps => ArrayRef[L<Paws::Transfer::WorkflowStep>]

Specifies the details for the steps that are in the specified workflow.

The C<TYPE> specifies which of the following actions is being taken for
this step.

=over

=item *

B<C<COPY> > - Copy the file to another location.

=item *

B<C<CUSTOM> > - Perform a custom step with an Lambda function target.

=item *

B<C<DECRYPT> > - Decrypt a file that was encrypted before it was
uploaded.

=item *

B<C<DELETE> > - Delete the file.

=item *

B<C<TAG> > - Add a tag to the file.

=back

Currently, copying and tagging are supported only on S3.

For file location, you specify either the Amazon S3 bucket and key, or
the Amazon EFS file system ID and path.



=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that can be used to group and search for workflows.
Tags are metadata attached to workflows for any purpose.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkflow in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

