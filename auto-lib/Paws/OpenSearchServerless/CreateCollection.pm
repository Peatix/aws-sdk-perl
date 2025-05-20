
package Paws::OpenSearchServerless::CreateCollection;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has StandbyReplicas => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'standbyReplicas' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCollection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::CreateCollectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::CreateCollection - Arguments for method CreateCollection on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCollection on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method CreateCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCollection.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $CreateCollectionResponse = $aoss->CreateCollection(
      Name        => 'MyCollectionName',
      ClientToken => 'MyClientToken',                                 # OPTIONAL
      Description => 'MyCreateCollectionRequestDescriptionString',    # OPTIONAL
      StandbyReplicas => 'ENABLED',                                   # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      Type => 'SEARCH',    # OPTIONAL
    );

    # Results:
    my $CreateCollectionDetail =
      $CreateCollectionResponse->CreateCollectionDetail;

    # Returns a L<Paws::OpenSearchServerless::CreateCollectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/CreateCollection>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure idempotency of the request.



=head2 Description => Str

Description of the collection.



=head2 B<REQUIRED> Name => Str

Name of the collection.



=head2 StandbyReplicas => Str

Indicates whether standby replicas should be used for a collection.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Tags => ArrayRef[L<Paws::OpenSearchServerless::Tag>]

An arbitrary set of tags (keyE<ndash>value pairs) to associate with the
OpenSearch Serverless collection.



=head2 Type => Str

The type of collection.

Valid values are: C<"SEARCH">, C<"TIMESERIES">, C<"VECTORSEARCH">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCollection in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

