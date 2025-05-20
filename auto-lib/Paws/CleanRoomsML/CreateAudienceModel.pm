
package Paws::CleanRoomsML::CreateAudienceModel;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TrainingDataEndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingDataEndTime');
  has TrainingDatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingDatasetArn', required => 1);
  has TrainingDataStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingDataStartTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAudienceModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audience-model');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::CreateAudienceModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateAudienceModel - Arguments for method CreateAudienceModel on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAudienceModel on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method CreateAudienceModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAudienceModel.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $CreateAudienceModelResponse = $cleanrooms -ml->CreateAudienceModel(
      Name               => 'MyNameString',
      TrainingDatasetArn => 'MyTrainingDatasetArn',
      Description        => 'MyResourceDescription',    # OPTIONAL
      KmsKeyArn          => 'MyKmsKeyArn',              # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TrainingDataEndTime   => '1970-01-01T01:00:00',    # OPTIONAL
      TrainingDataStartTime => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $AudienceModelArn = $CreateAudienceModelResponse->AudienceModelArn;

    # Returns a L<Paws::CleanRoomsML::CreateAudienceModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/CreateAudienceModel>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the audience model.



=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key. This key is used to
encrypt and decrypt customer-owned data in the trained ML model and the
associated data.



=head2 B<REQUIRED> Name => Str

The name of the audience model resource.



=head2 Tags => L<Paws::CleanRoomsML::TagMap>

The optional metadata that you apply to the resource to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50.

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8.

=item *

Maximum value length - 256 Unicode characters in UTF-8.

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case sensitive.

=item *

Do not use aws:, AWS:, or any upper or lowercase combination of such as
a prefix for keys as it is reserved for AWS use. You cannot edit or
delete tag keys with this prefix. Values can have this prefix. If a tag
value has aws as its prefix but the key does not, then Clean Rooms ML
considers it to be a user tag and will count against the limit of 50
tags. Tags with only the key prefix of aws do not count against your
tags per resource limit.

=back




=head2 TrainingDataEndTime => Str

The end date and time of the training window.



=head2 B<REQUIRED> TrainingDatasetArn => Str

The Amazon Resource Name (ARN) of the training dataset for this
audience model.



=head2 TrainingDataStartTime => Str

The start date and time of the training window.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAudienceModel in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

