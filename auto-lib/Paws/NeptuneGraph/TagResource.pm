
package Paws::NeptuneGraph::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NeptuneGraph::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::TagResourceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::TagResource - Arguments for method TagResource on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $TagResourceOutput = $neptune -graph->TagResource(
      ResourceArn => 'MyArn',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

ARN of the resource for which tags need to be added.



=head2 B<REQUIRED> Tags => L<Paws::NeptuneGraph::TagMap>

The tags to be assigned to the Neptune Analytics resource.

The tags are metadata that are specified as a list of key-value pairs:

B<Key> (string) E<ndash> A key is the required name of the tag. The
string value can be from 1 to 128 Unicode characters in length. It
can't be prefixed with C<aws:> and can only contain the set of Unicode
characters specified by this Java regular expression:
C<"^([\p{L}\p{Z}\p{N}_.:/=+\-]*)$")>.

B<Value> (string) E<ndash> A value is the optional value of the tag.
The string value can be from 1 to 256 Unicode characters in length. It
can't be prefixed with C<aws:> and can only contain the set of Unicode
characters specified by this Java regular expression:
C<"^([\p{L}\p{Z}\p{N}_.:/=+\-]*)$")>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

