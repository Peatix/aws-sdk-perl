
package Paws::RAM::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');
  has ResourceShareArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareArn');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RAM::Tag]', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tagresource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::TagResource - Arguments for method TagResource on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $TagResourceResponse = $ram->TagResource(
      Tags => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],
      ResourceArn      => 'MyString',    # OPTIONAL
      ResourceShareArn => 'MyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/TagResource>

=head1 ATTRIBUTES


=head2 ResourceArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the managed permission that you want to add tags to. You must
specify I<either> C<resourceArn>, or C<resourceShareArn>, but not both.



=head2 ResourceShareArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the resource share that you want to add tags to. You must specify
I<either> C<resourceShareArn>, or C<resourceArn>, but not both.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::RAM::Tag>]

A list of one or more tag key and value pairs. The tag key must be
present and not be an empty string. The tag value must be present but
can be an empty string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

