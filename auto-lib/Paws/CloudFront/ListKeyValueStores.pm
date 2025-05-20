
package Paws::CloudFront::ListKeyValueStores;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', query_name => 'Marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'MaxItems', traits => ['ParamInQuery']);
  has Status => (is => 'ro', isa => 'Str', query_name => 'Status', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListKeyValueStores');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/key-value-store');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListKeyValueStoresResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListKeyValueStores - Arguments for method ListKeyValueStores on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListKeyValueStores2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListKeyValueStores2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListKeyValueStores2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $ListKeyValueStoresResult = $cloudfront->ListKeyValueStores(
      Marker   => 'Mystring',    # OPTIONAL
      MaxItems => 'Mystring',    # OPTIONAL
      Status   => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $KeyValueStoreList = $ListKeyValueStoresResult->KeyValueStoreList;

    # Returns a L<Paws::CloudFront::ListKeyValueStoresResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/ListKeyValueStores>

=head1 ATTRIBUTES


=head2 Marker => Str

The marker associated with the key value stores list.



=head2 MaxItems => Str

The maximum number of items in the key value stores list.



=head2 Status => Str

The status of the request for the key value stores list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListKeyValueStores2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

