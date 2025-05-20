
package Paws::OpenSearchServerless::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::Tag]', traits => ['NameInRequest'], request_name => 'tags' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::TagResource - Arguments for method TagResource on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $TagResourceResponse = $aoss->TagResource(
      ResourceArn => 'MyArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource. The resource must be
active (not in the C<DELETING> state), and must be owned by the account
ID included in the request.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::OpenSearchServerless::Tag>]

A list of tags (key-value pairs) to add to the resource. All tag keys
in the request must be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

