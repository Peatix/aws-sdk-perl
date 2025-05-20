
package Paws::CleanRoomsML::CreateTrainingDataset;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TrainingData => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::Dataset]', traits => ['NameInRequest'], request_name => 'trainingData', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrainingDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/training-dataset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::CreateTrainingDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateTrainingDataset - Arguments for method CreateTrainingDataset on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrainingDataset on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method CreateTrainingDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrainingDataset.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $CreateTrainingDatasetResponse = $cleanrooms -ml->CreateTrainingDataset(
      Name         => 'MyNameString',
      RoleArn      => 'MyIamRoleArn',
      TrainingData => [
        {
          InputConfig => {
            DataSource => {
              GlueDataSource => {
                DatabaseName => 'MyGlueDatabaseName',    # min: 1, max: 128
                TableName    => 'MyGlueTableName',       # min: 1, max: 128
                CatalogId    => 'MyAccountId',    # min: 12, max: 12; OPTIONAL
              },

            },
            Schema => [
              {
                ColumnName  => 'MyColumnName',    # min: 1, max: 128
                ColumnTypes => [
                  'USER_ID',
                  ... # values: USER_ID, ITEM_ID, TIMESTAMP, CATEGORICAL_FEATURE, NUMERICAL_FEATURE
                ],    # min: 1, max: 1

              },
              ...
            ],    # min: 1, max: 100

          },
          Type => 'INTERACTIONS',    # values: INTERACTIONS

        },
        ...
      ],
      Description => 'MyResourceDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $TrainingDatasetArn = $CreateTrainingDatasetResponse->TrainingDatasetArn;

    # Returns a L<Paws::CleanRoomsML::CreateTrainingDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/CreateTrainingDataset>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the training dataset.



=head2 B<REQUIRED> Name => Str

The name of the training dataset. This name must be unique in your
account and region.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that Clean Rooms ML can assume to read the data
referred to in the C<dataSource> field of each dataset.

Passing a role across AWS accounts is not allowed. If you pass a role
that isn't in your account, you get an C<AccessDeniedException> error.



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




=head2 B<REQUIRED> TrainingData => ArrayRef[L<Paws::CleanRoomsML::Dataset>]

An array of information that lists the Dataset objects, which specifies
the dataset type and details on its location and schema. You must
provide a role that has read access to these tables.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrainingDataset in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

