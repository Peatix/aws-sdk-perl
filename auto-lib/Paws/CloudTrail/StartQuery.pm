
package Paws::CloudTrail::StartQuery;
  use Moose;
  has DeliveryS3Uri => (is => 'ro', isa => 'Str');
  has EventDataStoreOwnerAccountId => (is => 'ro', isa => 'Str');
  has QueryAlias => (is => 'ro', isa => 'Str');
  has QueryParameters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has QueryStatement => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::StartQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::StartQuery - Arguments for method StartQuery on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartQuery on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method StartQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartQuery.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $StartQueryResponse = $cloudtrail->StartQuery(
      DeliveryS3Uri                => 'MyDeliveryS3Uri',    # OPTIONAL
      EventDataStoreOwnerAccountId => 'MyAccountId',        # OPTIONAL
      QueryAlias                   => 'MyQueryAlias',       # OPTIONAL
      QueryParameters              => [
        'MyQueryParameter', ...                             # min: 1, max: 1024
      ],    # OPTIONAL
      QueryStatement => 'MyQueryStatement',    # OPTIONAL
    );

    # Results:
    my $EventDataStoreOwnerAccountId =
      $StartQueryResponse->EventDataStoreOwnerAccountId;
    my $QueryId = $StartQueryResponse->QueryId;

    # Returns a L<Paws::CloudTrail::StartQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/StartQuery>

=head1 ATTRIBUTES


=head2 DeliveryS3Uri => Str

The URI for the S3 bucket where CloudTrail delivers the query results.



=head2 EventDataStoreOwnerAccountId => Str

The account ID of the event data store owner.



=head2 QueryAlias => Str

The alias that identifies a query template.



=head2 QueryParameters => ArrayRef[Str|Undef]

The query parameters for the specified C<QueryAlias>.



=head2 QueryStatement => Str

The SQL code of your query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartQuery in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

