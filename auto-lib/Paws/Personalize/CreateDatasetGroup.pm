
package Paws::Personalize::CreateDatasetGroup;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' );
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDatasetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateDatasetGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDatasetGroup - Arguments for method CreateDatasetGroup on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDatasetGroup on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateDatasetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDatasetGroup.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateDatasetGroupResponse = $personalize->CreateDatasetGroup(
      Name      => 'MyName',
      Domain    => 'ECOMMERCE',      # OPTIONAL
      KmsKeyArn => 'MyKmsKeyArn',    # OPTIONAL
      RoleArn   => 'MyRoleArn',      # OPTIONAL
      Tags      => [
        {
          TagKey   => 'MyTagKey',      # min: 1, max: 128
          TagValue => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DatasetGroupArn = $CreateDatasetGroupResponse->DatasetGroupArn;
    my $Domain          = $CreateDatasetGroupResponse->Domain;

    # Returns a L<Paws::Personalize::CreateDatasetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateDatasetGroup>

=head1 ATTRIBUTES


=head2 Domain => Str

The domain of the dataset group. Specify a domain to create a Domain
dataset group. The domain you specify determines the default schemas
for datasets and the use cases available for recommenders. If you don't
specify a domain, you create a Custom dataset group with solution
versions that you deploy with a campaign.

Valid values are: C<"ECOMMERCE">, C<"VIDEO_ON_DEMAND">

=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of a Key Management Service (KMS) key
used to encrypt the datasets.



=head2 B<REQUIRED> Name => Str

The name for the new dataset group.



=head2 RoleArn => Str

The ARN of the Identity and Access Management (IAM) role that has
permissions to access the Key Management Service (KMS) key. Supplying
an IAM role is only valid when also specifying a KMS key.



=head2 Tags => ArrayRef[L<Paws::Personalize::Tag>]

A list of tags
(https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html)
to apply to the dataset group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatasetGroup in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

