
package Paws::AppStream::CreateAppBlock;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PackagingType => (is => 'ro', isa => 'Str');
  has PostSetupScriptDetails => (is => 'ro', isa => 'Paws::AppStream::ScriptDetails');
  has SetupScriptDetails => (is => 'ro', isa => 'Paws::AppStream::ScriptDetails');
  has SourceS3Location => (is => 'ro', isa => 'Paws::AppStream::S3Location', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppStream::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppBlock');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateAppBlockResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateAppBlock - Arguments for method CreateAppBlock on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAppBlock on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateAppBlock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAppBlock.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateAppBlockResult = $appstream2->CreateAppBlock(
      Name             => 'MyName',
      SourceS3Location => {
        S3Bucket => 'MyS3Bucket',    # min: 3, max: 63
        S3Key    => 'MyS3Key',       # min: 1, max: 1024; OPTIONAL
      },
      Description            => 'MyDescription',    # OPTIONAL
      DisplayName            => 'MyDisplayName',    # OPTIONAL
      PackagingType          => 'CUSTOM',           # OPTIONAL
      PostSetupScriptDetails => {
        ExecutablePath   => 'MyString',             # min: 1
        ScriptS3Location => {
          S3Bucket => 'MyS3Bucket',    # min: 3, max: 63
          S3Key    => 'MyS3Key',       # min: 1, max: 1024; OPTIONAL
        },
        TimeoutInSeconds     => 1,
        ExecutableParameters => 'MyString',    # min: 1
      },    # OPTIONAL
      SetupScriptDetails => {
        ExecutablePath   => 'MyString',    # min: 1
        ScriptS3Location => {
          S3Bucket => 'MyS3Bucket',        # min: 3, max: 63
          S3Key    => 'MyS3Key',           # min: 1, max: 1024; OPTIONAL
        },
        TimeoutInSeconds     => 1,
        ExecutableParameters => 'MyString',    # min: 1
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AppBlock = $CreateAppBlockResult->AppBlock;

    # Returns a L<Paws::AppStream::CreateAppBlockResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateAppBlock>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the app block.



=head2 DisplayName => Str

The display name of the app block. This is not displayed to the user.



=head2 B<REQUIRED> Name => Str

The name of the app block.



=head2 PackagingType => Str

The packaging type of the app block.

Valid values are: C<"CUSTOM">, C<"APPSTREAM2">

=head2 PostSetupScriptDetails => L<Paws::AppStream::ScriptDetails>

The post setup script details of the app block. This can only be
provided for the C<APPSTREAM2> PackagingType.



=head2 SetupScriptDetails => L<Paws::AppStream::ScriptDetails>

The setup script details of the app block. This must be provided for
the C<CUSTOM> PackagingType.



=head2 B<REQUIRED> SourceS3Location => L<Paws::AppStream::S3Location>

The source S3 location of the app block.



=head2 Tags => L<Paws::AppStream::Tags>

The tags assigned to the app block.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAppBlock in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

