
package Paws::CloudFront::UpdateKeyValueStore;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader'], required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'Name', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKeyValueStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/key-value-store/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateKeyValueStoreResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'UpdateKeyValueStoreRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateKeyValueStore - Arguments for method UpdateKeyValueStore on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKeyValueStore2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateKeyValueStore2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKeyValueStore2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateKeyValueStoreResult = $cloudfront->UpdateKeyValueStore(
      Comment => 'MyKeyValueStoreComment',
      IfMatch => 'Mystring',
      Name    => 'MyKeyValueStoreName',

    );

    # Results:
    my $ETag          = $UpdateKeyValueStoreResult->ETag;
    my $KeyValueStore = $UpdateKeyValueStoreResult->KeyValueStore;

    # Returns a L<Paws::CloudFront::UpdateKeyValueStoreResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateKeyValueStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Comment => Str

The comment of the key value store to update.



=head2 B<REQUIRED> IfMatch => Str

The key value store to update, if a match occurs.



=head2 B<REQUIRED> Name => Str

The name of the key value store to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKeyValueStore2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

