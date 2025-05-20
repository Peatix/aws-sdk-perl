
package Paws::AppStream::CreateApplication;
  use Moose;
  has AppBlockArn => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has IconS3Location => (is => 'ro', isa => 'Paws::AppStream::S3Location', required => 1);
  has InstanceFamilies => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has LaunchParameters => (is => 'ro', isa => 'Str');
  has LaunchPath => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platforms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppStream::Tags');
  has WorkingDirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateApplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateApplication - Arguments for method CreateApplication on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateApplicationResult = $appstream2->CreateApplication(
      AppBlockArn    => 'MyArn',
      IconS3Location => {
        S3Bucket => 'MyS3Bucket',    # min: 3, max: 63
        S3Key    => 'MyS3Key',       # min: 1, max: 1024; OPTIONAL
      },
      InstanceFamilies => [
        'MyString', ...              # min: 1
      ],
      LaunchPath => 'MyString',
      Name       => 'MyName',
      Platforms  => [
        'WINDOWS',
        ... # values: WINDOWS, WINDOWS_SERVER_2016, WINDOWS_SERVER_2019, WINDOWS_SERVER_2022, AMAZON_LINUX2, RHEL8, ROCKY_LINUX8
      ],
      Description      => 'MyDescription',    # OPTIONAL
      DisplayName      => 'MyDisplayName',    # OPTIONAL
      LaunchParameters => 'MyString',         # OPTIONAL
      Tags             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      WorkingDirectory => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Application = $CreateApplicationResult->Application;

    # Returns a L<Paws::AppStream::CreateApplicationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppBlockArn => Str

The app block ARN to which the application should be associated



=head2 Description => Str

The description of the application.



=head2 DisplayName => Str

The display name of the application. This name is visible to users in
the application catalog.



=head2 B<REQUIRED> IconS3Location => L<Paws::AppStream::S3Location>

The location in S3 of the application icon.



=head2 B<REQUIRED> InstanceFamilies => ArrayRef[Str|Undef]

The instance families the application supports. Valid values are
GENERAL_PURPOSE and GRAPHICS_G4.



=head2 LaunchParameters => Str

The launch parameters of the application.



=head2 B<REQUIRED> LaunchPath => Str

The launch path of the application.



=head2 B<REQUIRED> Name => Str

The name of the application. This name is visible to users when display
name is not specified.



=head2 B<REQUIRED> Platforms => ArrayRef[Str|Undef]

The platforms the application supports. WINDOWS_SERVER_2019 and
AMAZON_LINUX2 are supported for Elastic fleets.



=head2 Tags => L<Paws::AppStream::Tags>

The tags assigned to the application.



=head2 WorkingDirectory => Str

The working directory of the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

