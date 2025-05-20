
package Paws::Kendra::CreateThesaurus;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceS3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateThesaurus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::CreateThesaurusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateThesaurus - Arguments for method CreateThesaurus on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateThesaurus on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method CreateThesaurus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateThesaurus.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $CreateThesaurusResponse = $kendra->CreateThesaurus(
      IndexId      => 'MyIndexId',
      Name         => 'MyThesaurusName',
      RoleArn      => 'MyRoleArn',
      SourceS3Path => {
        Bucket => 'MyS3BucketName',    # min: 3, max: 63
        Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

      },
      ClientToken => 'MyClientTokenName',    # OPTIONAL
      Description => 'MyDescription',        # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Id = $CreateThesaurusResponse->Id;

    # Returns a L<Paws::Kendra::CreateThesaurusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/CreateThesaurus>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that you provide to identify the request to create a thesaurus.
Multiple calls to the C<CreateThesaurus> API with the same client token
will create only one thesaurus.



=head2 Description => Str

A description for the thesaurus.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for the thesaurus.



=head2 B<REQUIRED> Name => Str

A name for the thesaurus.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
your S3 bucket that contains the thesaurus file. For more information,
see IAM access roles for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).



=head2 B<REQUIRED> SourceS3Path => L<Paws::Kendra::S3Path>

The path to the thesaurus file in S3.



=head2 Tags => ArrayRef[L<Paws::Kendra::Tag>]

A list of key-value pairs that identify or categorize the thesaurus.
You can also use tags to help control access to the thesaurus. Tag keys
and values can consist of Unicode letters, digits, white space, and any
of the following symbols: _ . : / = + - @.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateThesaurus in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

