
package Paws::CloudFront::CreateKeyValueStore;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has ImportSource => (is => 'ro', isa => 'Paws::CloudFront::ImportSource');
  has Name => (is => 'ro', isa => 'Str', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKeyValueStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/key-value-store');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateKeyValueStoreResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateKeyValueStoreRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateKeyValueStore - Arguments for method CreateKeyValueStore on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKeyValueStore2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateKeyValueStore2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKeyValueStore2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateKeyValueStoreResult = $cloudfront->CreateKeyValueStore(
      Name         => 'MyKeyValueStoreName',
      Comment      => 'MyKeyValueStoreComment',    # OPTIONAL
      ImportSource => {
        SourceARN  => 'Mystring',
        SourceType => 'S3',                        # values: S3

      },    # OPTIONAL
    );

    # Results:
    my $ETag          = $CreateKeyValueStoreResult->ETag;
    my $KeyValueStore = $CreateKeyValueStoreResult->KeyValueStore;
    my $Location      = $CreateKeyValueStoreResult->Location;

    # Returns a L<Paws::CloudFront::CreateKeyValueStoreResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateKeyValueStore>

=head1 ATTRIBUTES


=head2 Comment => Str

The comment of the key value store.



=head2 ImportSource => L<Paws::CloudFront::ImportSource>

The S3 bucket that provides the source for the import. The source must
be in a valid JSON format.



=head2 B<REQUIRED> Name => Str

The name of the key value store. The minimum length is 1 character and
the maximum length is 64 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKeyValueStore2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

