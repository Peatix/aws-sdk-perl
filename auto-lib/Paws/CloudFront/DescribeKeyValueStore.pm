
package Paws::CloudFront::DescribeKeyValueStore;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', uri_name => 'Name', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeKeyValueStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/key-value-store/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::DescribeKeyValueStoreResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DescribeKeyValueStore - Arguments for method DescribeKeyValueStore on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeKeyValueStore2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method DescribeKeyValueStore2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeKeyValueStore2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $DescribeKeyValueStoreResult = $cloudfront->DescribeKeyValueStore(
      Name => 'MyKeyValueStoreName',

    );

    # Results:
    my $ETag          = $DescribeKeyValueStoreResult->ETag;
    my $KeyValueStore = $DescribeKeyValueStoreResult->KeyValueStore;

    # Returns a L<Paws::CloudFront::DescribeKeyValueStoreResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/DescribeKeyValueStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the key value store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeKeyValueStore2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

