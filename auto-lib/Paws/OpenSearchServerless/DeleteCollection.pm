
package Paws::OpenSearchServerless::DeleteCollection;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCollection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::DeleteCollectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::DeleteCollection - Arguments for method DeleteCollection on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCollection on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method DeleteCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCollection.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $DeleteCollectionResponse = $aoss->DeleteCollection(
      Id          => 'MyCollectionId',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $DeleteCollectionDetail =
      $DeleteCollectionResponse->DeleteCollectionDetail;

    # Returns a L<Paws::OpenSearchServerless::DeleteCollectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/DeleteCollection>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure idempotency of the
request.



=head2 B<REQUIRED> Id => Str

The unique identifier of the collection. For example, C<1iu5usc406kd>.
The ID is part of the collection endpoint. You can also retrieve it
using the ListCollections
(https://docs.aws.amazon.com/opensearch-service/latest/ServerlessAPIReference/API_ListCollections.html)
API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCollection in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

