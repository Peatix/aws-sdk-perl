
package Paws::Comprehend::ImportModel;
  use Moose;
  has DataAccessRoleArn => (is => 'ro', isa => 'Str');
  has ModelKmsKeyId => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has SourceModelArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Tag]');
  has VersionName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::ImportModelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ImportModel - Arguments for method ImportModel on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportModel on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method ImportModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportModel.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $ImportModelResponse = $comprehend->ImportModel(
      SourceModelArn    => 'MyComprehendModelArn',
      DataAccessRoleArn => 'MyIamRoleArn',           # OPTIONAL
      ModelKmsKeyId     => 'MyKmsKeyId',             # OPTIONAL
      ModelName         => 'MyComprehendArnName',    # OPTIONAL
      Tags              => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      VersionName => 'MyVersionName',    # OPTIONAL
    );

    # Results:
    my $ModelArn = $ImportModelResponse->ModelArn;

    # Returns a L<Paws::Comprehend::ImportModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/ImportModel>

=head1 ATTRIBUTES


=head2 DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants Amazon
Comprehend permission to use Amazon Key Management Service (KMS) to
encrypt or decrypt the custom model.



=head2 ModelKmsKeyId => Str

ID for the KMS key that Amazon Comprehend uses to encrypt trained
custom models. The ModelKmsKeyId can be either of the following
formats:

=over

=item *

KMS Key ID: C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS Key:
C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back




=head2 ModelName => Str

The name to assign to the custom model that is created in Amazon
Comprehend by this import.



=head2 B<REQUIRED> SourceModelArn => Str

The Amazon Resource Name (ARN) of the custom model to import.



=head2 Tags => ArrayRef[L<Paws::Comprehend::Tag>]

Tags to associate with the custom model that is created by this import.
A tag is a key-value pair that adds as a metadata to a resource used by
Amazon Comprehend. For example, a tag with "Sales" as the key might be
added to a resource to indicate its use by the sales department.



=head2 VersionName => Str

The version name given to the custom model that is created by this
import. Version names can have a maximum of 256 characters.
Alphanumeric characters, hyphens (-) and underscores (_) are allowed.
The version name must be unique among all models with the same
classifier name in the account/Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportModel in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

