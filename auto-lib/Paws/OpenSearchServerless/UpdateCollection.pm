
package Paws::OpenSearchServerless::UpdateCollection;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCollection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::UpdateCollectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::UpdateCollection - Arguments for method UpdateCollection on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCollection on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method UpdateCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCollection.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $UpdateCollectionResponse = $aoss->UpdateCollection(
      Id          => 'MyCollectionId',
      ClientToken => 'MyClientToken',                                 # OPTIONAL
      Description => 'MyUpdateCollectionRequestDescriptionString',    # OPTIONAL
    );

    # Results:
    my $UpdateCollectionDetail =
      $UpdateCollectionResponse->UpdateCollectionDetail;

    # Returns a L<Paws::OpenSearchServerless::UpdateCollectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/UpdateCollection>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure idempotency of the request.



=head2 Description => Str

A description of the collection.



=head2 B<REQUIRED> Id => Str

The unique identifier of the collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCollection in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

