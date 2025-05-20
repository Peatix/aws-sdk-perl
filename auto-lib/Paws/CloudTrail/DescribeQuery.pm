
package Paws::CloudTrail::DescribeQuery;
  use Moose;
  has EventDataStore => (is => 'ro', isa => 'Str');
  has EventDataStoreOwnerAccountId => (is => 'ro', isa => 'Str');
  has QueryAlias => (is => 'ro', isa => 'Str');
  has QueryId => (is => 'ro', isa => 'Str');
  has RefreshId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::DescribeQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::DescribeQuery - Arguments for method DescribeQuery on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeQuery on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method DescribeQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeQuery.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $DescribeQueryResponse = $cloudtrail->DescribeQuery(
      EventDataStore               => 'MyEventDataStoreArn',    # OPTIONAL
      EventDataStoreOwnerAccountId => 'MyAccountId',            # OPTIONAL
      QueryAlias                   => 'MyQueryAlias',           # OPTIONAL
      QueryId                      => 'MyUUID',                 # OPTIONAL
      RefreshId                    => 'MyRefreshId',            # OPTIONAL
    );

    # Results:
    my $DeliveryS3Uri  = $DescribeQueryResponse->DeliveryS3Uri;
    my $DeliveryStatus = $DescribeQueryResponse->DeliveryStatus;
    my $ErrorMessage   = $DescribeQueryResponse->ErrorMessage;
    my $EventDataStoreOwnerAccountId =
      $DescribeQueryResponse->EventDataStoreOwnerAccountId;
    my $Prompt          = $DescribeQueryResponse->Prompt;
    my $QueryId         = $DescribeQueryResponse->QueryId;
    my $QueryStatistics = $DescribeQueryResponse->QueryStatistics;
    my $QueryStatus     = $DescribeQueryResponse->QueryStatus;
    my $QueryString     = $DescribeQueryResponse->QueryString;

    # Returns a L<Paws::CloudTrail::DescribeQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/DescribeQuery>

=head1 ATTRIBUTES


=head2 EventDataStore => Str

The ARN (or the ID suffix of the ARN) of an event data store on which
the specified query was run.



=head2 EventDataStoreOwnerAccountId => Str

The account ID of the event data store owner.



=head2 QueryAlias => Str

The alias that identifies a query template.



=head2 QueryId => Str

The query ID.



=head2 RefreshId => Str

The ID of the dashboard refresh.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeQuery in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

