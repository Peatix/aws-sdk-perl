
package Paws::QBusiness::UntagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceARN', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'tagKeys', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/tags/{resourceARN}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::UntagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UntagResource - Arguments for method UntagResource on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $UntagResourceResponse = $qbusiness->UntagResource(
      ResourceARN => 'MyAmazonResourceName',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN) of the Amazon Q Business application, or
data source to remove the tag from.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of tag keys to remove from the Amazon Q Business application or
data source. If a tag key does not exist on the resource, it is
ignored.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

