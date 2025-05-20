
package Paws::EC2::GetRouteServerRoutingDatabase;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RouteServerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRouteServerRoutingDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetRouteServerRoutingDatabaseResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetRouteServerRoutingDatabase - Arguments for method GetRouteServerRoutingDatabase on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRouteServerRoutingDatabase on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetRouteServerRoutingDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRouteServerRoutingDatabase.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetRouteServerRoutingDatabaseResult =
      $ec2->GetRouteServerRoutingDatabase(
      RouteServerId => 'MyRouteServerId',
      DryRun        => 1,                   # OPTIONAL
      Filters       => [
        {
          Name   => 'MyString',             # OPTIONAL
          Values => [
            'MyString', ...                 # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $AreRoutesPersisted =
      $GetRouteServerRoutingDatabaseResult->AreRoutesPersisted;
    my $NextToken = $GetRouteServerRoutingDatabaseResult->NextToken;
    my $Routes    = $GetRouteServerRoutingDatabaseResult->Routes;

    # Returns a L<Paws::EC2::GetRouteServerRoutingDatabaseResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetRouteServerRoutingDatabase>

=head1 ATTRIBUTES


=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

Filters to apply to the routing database query.



=head2 MaxResults => Int

The maximum number of routing database entries to return in a single
response.



=head2 NextToken => Str

The token for the next page of results.



=head2 B<REQUIRED> RouteServerId => Str

The ID of the route server for which to get the routing database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRouteServerRoutingDatabase in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

