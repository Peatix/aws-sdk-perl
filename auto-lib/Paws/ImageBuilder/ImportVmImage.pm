
package Paws::ImageBuilder::ImportVmImage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OsVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'osVersion');
  has Platform => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platform', required => 1);
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VmImportTaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vmImportTaskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportVmImage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ImportVmImage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ImportVmImageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ImportVmImage - Arguments for method ImportVmImage on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportVmImage on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ImportVmImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportVmImage.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ImportVmImageResponse = $imagebuilder->ImportVmImage(
      ClientToken     => 'MyClientToken',
      Name            => 'MyNonEmptyString',
      Platform        => 'Windows',
      SemanticVersion => 'MyVersionNumber',
      VmImportTaskId  => 'MyNonEmptyString',
      Description     => 'MyNonEmptyString',    # OPTIONAL
      OsVersion       => 'MyOsVersion',         # OPTIONAL
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ClientToken = $ImportVmImageResponse->ClientToken;
    my $ImageArn    = $ImportVmImageResponse->ImageArn;
    my $RequestId   = $ImportVmImageResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::ImportVmImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ImportVmImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 Description => Str

The description for the base image that is created by the import
process.



=head2 B<REQUIRED> Name => Str

The name of the base image that is created by the import process.



=head2 OsVersion => Str

The operating system version for the imported VM.



=head2 B<REQUIRED> Platform => Str

The operating system platform for the imported VM.

Valid values are: C<"Windows">, C<"Linux">, C<"macOS">

=head2 B<REQUIRED> SemanticVersion => Str

The semantic version to attach to the base image that was created
during the import process. This version follows the semantic version
syntax.

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

Tags that are attached to the import resources.



=head2 B<REQUIRED> VmImportTaskId => Str

The C<importTaskId> (API) or C<ImportTaskId> (CLI) from the Amazon EC2
VM import process. Image Builder retrieves information from the import
process to pull in the AMI that is created from the VM source as the
base image for your recipe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportVmImage in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

