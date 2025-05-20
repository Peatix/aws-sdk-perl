
package Paws::ImageBuilder::CreateWorkflow;
  use Moose;
  has ChangeDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changeDescription');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Data => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'data');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uri');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateWorkflow');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::CreateWorkflowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateWorkflow - Arguments for method CreateWorkflow on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkflow on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method CreateWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkflow.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $CreateWorkflowResponse = $imagebuilder->CreateWorkflow(
      ClientToken       => 'MyClientToken',
      Name              => 'MyResourceName',
      SemanticVersion   => 'MyVersionNumber',
      Type              => 'BUILD',
      ChangeDescription => 'MyNonEmptyString',        # OPTIONAL
      Data              => 'MyInlineWorkflowData',    # OPTIONAL
      Description       => 'MyNonEmptyString',        # OPTIONAL
      KmsKeyId          => 'MyNonEmptyString',        # OPTIONAL
      Tags              => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Uri => 'MyUri',    # OPTIONAL
    );

    # Results:
    my $ClientToken = $CreateWorkflowResponse->ClientToken;
    my $WorkflowBuildVersionArn =
      $CreateWorkflowResponse->WorkflowBuildVersionArn;

    # Returns a L<Paws::ImageBuilder::CreateWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/CreateWorkflow>

=head1 ATTRIBUTES


=head2 ChangeDescription => Str

Describes what change has been made in this version of the workflow, or
what makes this version different from other versions of the workflow.



=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 Data => Str

Contains the UTF-8 encoded YAML document content for the workflow.
Alternatively, you can specify the C<uri> of a YAML document file
stored in Amazon S3. However, you cannot specify both properties.



=head2 Description => Str

Describes the workflow.



=head2 KmsKeyId => Str

The ID of the KMS key that is used to encrypt this workflow resource.



=head2 B<REQUIRED> Name => Str

The name of the workflow to create.



=head2 B<REQUIRED> SemanticVersion => Str

The semantic version of this workflow resource. The semantic version
syntax adheres to the following rules.

The semantic version has four nodes:
E<lt>majorE<gt>.E<lt>minorE<gt>.E<lt>patchE<gt>/E<lt>buildE<gt>. You
can assign values for the first three, and can filter on all of them.

B<Assignment:> For the first three nodes you can assign any positive
integer value, including zero, with an upper limit of 2^30-1, or
1073741823 for each node. Image Builder automatically assigns the build
number to the fourth node.

B<Patterns:> You can use any numeric pattern that adheres to the
assignment requirements for the nodes that you can assign. For example,
you might choose a software version pattern, such as 1.0.0, or a date,
such as 2021.01.01.



=head2 Tags => L<Paws::ImageBuilder::TagMap>

Tags that apply to the workflow resource.



=head2 B<REQUIRED> Type => Str

The phase in the image build process for which the workflow resource is
responsible.

Valid values are: C<"BUILD">, C<"TEST">, C<"DISTRIBUTION">

=head2 Uri => Str

The C<uri> of a YAML component document file. This must be an S3 URL
(C<s3://bucket/key>), and the requester must have permission to access
the S3 bucket it points to. If you use Amazon S3, you can specify
component content up to your service quota.

Alternatively, you can specify the YAML document inline, using the
component C<data> property. You cannot specify both properties.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkflow in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

