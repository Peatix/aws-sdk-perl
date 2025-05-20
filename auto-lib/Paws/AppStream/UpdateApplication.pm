
package Paws::AppStream::UpdateApplication;
  use Moose;
  has AppBlockArn => (is => 'ro', isa => 'Str');
  has AttributesToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has IconS3Location => (is => 'ro', isa => 'Paws::AppStream::S3Location');
  has LaunchParameters => (is => 'ro', isa => 'Str');
  has LaunchPath => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has WorkingDirectory => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::UpdateApplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateApplication - Arguments for method UpdateApplication on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $UpdateApplicationResult = $appstream2->UpdateApplication(
      Name               => 'MyName',
      AppBlockArn        => 'MyArn',    # OPTIONAL
      AttributesToDelete => [
        'LAUNCH_PARAMETERS', ...  # values: LAUNCH_PARAMETERS, WORKING_DIRECTORY
      ],    # OPTIONAL
      Description    => 'MyDescription',    # OPTIONAL
      DisplayName    => 'MyDisplayName',    # OPTIONAL
      IconS3Location => {
        S3Bucket => 'MyS3Bucket',           # min: 3, max: 63
        S3Key    => 'MyS3Key',              # min: 1, max: 1024; OPTIONAL
      },    # OPTIONAL
      LaunchParameters => 'MyString',    # OPTIONAL
      LaunchPath       => 'MyString',    # OPTIONAL
      WorkingDirectory => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Application = $UpdateApplicationResult->Application;

    # Returns a L<Paws::AppStream::UpdateApplicationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/UpdateApplication>

=head1 ATTRIBUTES


=head2 AppBlockArn => Str

The ARN of the app block.



=head2 AttributesToDelete => ArrayRef[Str|Undef]

The attributes to delete for an application.



=head2 Description => Str

The description of the application.



=head2 DisplayName => Str

The display name of the application. This name is visible to users in
the application catalog.



=head2 IconS3Location => L<Paws::AppStream::S3Location>

The icon S3 location of the application.



=head2 LaunchParameters => Str

The launch parameters of the application.



=head2 LaunchPath => Str

The launch path of the application.



=head2 B<REQUIRED> Name => Str

The name of the application. This name is visible to users when display
name is not specified.



=head2 WorkingDirectory => Str

The working directory of the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

