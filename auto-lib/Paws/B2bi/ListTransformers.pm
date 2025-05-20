
package Paws::B2bi::ListTransformers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTransformers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::ListTransformersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::ListTransformers - Arguments for method ListTransformers on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTransformers on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method ListTransformers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTransformers.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $ListTransformersResponse = $b2bi->ListTransformers(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyPageToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListTransformersResponse->NextToken;
    my $Transformers = $ListTransformersResponse->Transformers;

    # Returns a L<Paws::B2bi::ListTransformersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/ListTransformers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the number of items to return for the API response.



=head2 NextToken => Str

When additional results are obtained from the command, a C<NextToken>
parameter is returned in the output. You can then pass the C<NextToken>
parameter in a subsequent command to continue listing additional
resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTransformers in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

