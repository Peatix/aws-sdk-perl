
package Paws::OSIS::UntagResource;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'arn', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2022-01-01/osis/untagResource/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OSIS::UntagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::UntagResource - Arguments for method UntagResource on L<Paws::OSIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon OpenSearch Ingestion|Paws::OSIS> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $osis = Paws->service('OSIS');
    my $UntagResourceResponse = $osis->UntagResource(
      Arn     => 'MyPipelineArn',
      TagKeys => [ 'MyString', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/osis/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the pipeline to remove tags from.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tag keys to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::OSIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

