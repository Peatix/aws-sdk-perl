
package Paws::SageMaker::UpdateImageVersion;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str');
  has AliasesToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AliasesToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Horovod => (is => 'ro', isa => 'Bool');
  has ImageName => (is => 'ro', isa => 'Str', required => 1);
  has JobType => (is => 'ro', isa => 'Str');
  has MLFramework => (is => 'ro', isa => 'Str');
  has Processor => (is => 'ro', isa => 'Str');
  has ProgrammingLang => (is => 'ro', isa => 'Str');
  has ReleaseNotes => (is => 'ro', isa => 'Str');
  has VendorGuidance => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateImageVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateImageVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateImageVersion - Arguments for method UpdateImageVersion on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateImageVersion on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateImageVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateImageVersion.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateImageVersionResponse = $api . sagemaker->UpdateImageVersion(
      ImageName    => 'MyImageName',
      Alias        => 'MySageMakerImageVersionAlias',    # OPTIONAL
      AliasesToAdd => [
        'MySageMakerImageVersionAlias', ...              # min: 1, max: 128
      ],    # OPTIONAL
      AliasesToDelete => [
        'MySageMakerImageVersionAlias', ...    # min: 1, max: 128
      ],    # OPTIONAL
      Horovod         => 1,                      # OPTIONAL
      JobType         => 'TRAINING',             # OPTIONAL
      MLFramework     => 'MyMLFramework',        # OPTIONAL
      Processor       => 'CPU',                  # OPTIONAL
      ProgrammingLang => 'MyProgrammingLang',    # OPTIONAL
      ReleaseNotes    => 'MyReleaseNotes',       # OPTIONAL
      VendorGuidance  => 'NOT_PROVIDED',         # OPTIONAL
      Version         => 1,                      # OPTIONAL
    );

    # Results:
    my $ImageVersionArn = $UpdateImageVersionResponse->ImageVersionArn;

    # Returns a L<Paws::SageMaker::UpdateImageVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateImageVersion>

=head1 ATTRIBUTES


=head2 Alias => Str

The alias of the image version.



=head2 AliasesToAdd => ArrayRef[Str|Undef]

A list of aliases to add.



=head2 AliasesToDelete => ArrayRef[Str|Undef]

A list of aliases to delete.



=head2 Horovod => Bool

Indicates Horovod compatibility.



=head2 B<REQUIRED> ImageName => Str

The name of the image.



=head2 JobType => Str

Indicates SageMaker AI job type compatibility.

=over

=item *

C<TRAINING>: The image version is compatible with SageMaker AI training
jobs.

=item *

C<INFERENCE>: The image version is compatible with SageMaker AI
inference jobs.

=item *

C<NOTEBOOK_KERNEL>: The image version is compatible with SageMaker AI
notebook kernels.

=back


Valid values are: C<"TRAINING">, C<"INFERENCE">, C<"NOTEBOOK_KERNEL">

=head2 MLFramework => Str

The machine learning framework vended in the image version.



=head2 Processor => Str

Indicates CPU or GPU compatibility.

=over

=item *

C<CPU>: The image version is compatible with CPU.

=item *

C<GPU>: The image version is compatible with GPU.

=back


Valid values are: C<"CPU">, C<"GPU">

=head2 ProgrammingLang => Str

The supported programming language and its version.



=head2 ReleaseNotes => Str

The maintainer description of the image version.



=head2 VendorGuidance => Str

The availability of the image version specified by the maintainer.

=over

=item *

C<NOT_PROVIDED>: The maintainers did not provide a status for image
version stability.

=item *

C<STABLE>: The image version is stable.

=item *

C<TO_BE_ARCHIVED>: The image version is set to be archived. Custom
image versions that are set to be archived are automatically archived
after three months.

=item *

C<ARCHIVED>: The image version is archived. Archived image versions are
not searchable and are no longer actively supported.

=back


Valid values are: C<"NOT_PROVIDED">, C<"STABLE">, C<"TO_BE_ARCHIVED">, C<"ARCHIVED">

=head2 Version => Int

The version of the image.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateImageVersion in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

