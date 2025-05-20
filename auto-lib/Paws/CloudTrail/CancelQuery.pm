
package Paws::CloudTrail::CancelQuery;
  use Moose;
  has EventDataStore => (is => 'ro', isa => 'Str');
  has EventDataStoreOwnerAccountId => (is => 'ro', isa => 'Str');
  has QueryId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::CancelQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::CancelQuery - Arguments for method CancelQuery on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelQuery on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method CancelQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelQuery.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $CancelQueryResponse = $cloudtrail->CancelQuery(
      QueryId                      => 'MyUUID',
      EventDataStore               => 'MyEventDataStoreArn',    # OPTIONAL
      EventDataStoreOwnerAccountId => 'MyAccountId',            # OPTIONAL
    );

    # Results:
    my $EventDataStoreOwnerAccountId =
      $CancelQueryResponse->EventDataStoreOwnerAccountId;
    my $QueryId     = $CancelQueryResponse->QueryId;
    my $QueryStatus = $CancelQueryResponse->QueryStatus;

    # Returns a L<Paws::CloudTrail::CancelQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/CancelQuery>

=head1 ATTRIBUTES


=head2 EventDataStore => Str

The ARN (or the ID suffix of the ARN) of an event data store on which
the specified query is running.



=head2 EventDataStoreOwnerAccountId => Str

The account ID of the event data store owner.



=head2 B<REQUIRED> QueryId => Str

The ID of the query that you want to cancel. The C<QueryId> comes from
the response of a C<StartQuery> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelQuery in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

