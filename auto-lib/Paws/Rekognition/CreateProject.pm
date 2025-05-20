
package Paws::Rekognition::CreateProject;
  use Moose;
  has AutoUpdate => (is => 'ro', isa => 'Str');
  has Feature => (is => 'ro', isa => 'Str');
  has ProjectName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Rekognition::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::CreateProjectResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateProject - Arguments for method CreateProject on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $CreateProjectResponse = $rekognition->CreateProject(
      ProjectName => 'MyProjectName',
      AutoUpdate  => 'ENABLED',               # OPTIONAL
      Feature     => 'CONTENT_MODERATION',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ProjectArn = $CreateProjectResponse->ProjectArn;

    # Returns a L<Paws::Rekognition::CreateProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/CreateProject>

=head1 ATTRIBUTES


=head2 AutoUpdate => Str

Specifies whether automatic retraining should be attempted for the
versions of the project. Automatic retraining is done as a best effort.
Required argument for Content Moderation. Applicable only to adapters.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Feature => Str

Specifies feature that is being customized. If no value is provided
CUSTOM_LABELS is used as a default.

Valid values are: C<"CONTENT_MODERATION">, C<"CUSTOM_LABELS">

=head2 B<REQUIRED> ProjectName => Str

The name of the project to create.



=head2 Tags => L<Paws::Rekognition::TagMap>

A set of tags (key-value pairs) that you want to attach to the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

