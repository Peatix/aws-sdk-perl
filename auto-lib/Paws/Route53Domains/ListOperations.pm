
package Paws::Route53Domains::ListOperations;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubmittedSince => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOperations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::ListOperationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ListOperations - Arguments for method ListOperations on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOperations on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method ListOperations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOperations.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $ListOperationsResponse = $route53domains->ListOperations(
      Marker    => 'MyPageMarker',     # OPTIONAL
      MaxItems  => 1,                  # OPTIONAL
      SortBy    => 'SubmittedDate',    # OPTIONAL
      SortOrder => 'ASC',              # OPTIONAL
      Status    => [
        'SUBMITTED',
        ...    # values: SUBMITTED, IN_PROGRESS, ERROR, SUCCESSFUL, FAILED
      ],    # OPTIONAL
      SubmittedSince => '1970-01-01T01:00:00',    # OPTIONAL
      Type           => [
        'REGISTER_DOMAIN',
        ... # values: REGISTER_DOMAIN, DELETE_DOMAIN, TRANSFER_IN_DOMAIN, UPDATE_DOMAIN_CONTACT, UPDATE_NAMESERVER, CHANGE_PRIVACY_PROTECTION, DOMAIN_LOCK, ENABLE_AUTORENEW, DISABLE_AUTORENEW, ADD_DNSSEC, REMOVE_DNSSEC, EXPIRE_DOMAIN, TRANSFER_OUT_DOMAIN, CHANGE_DOMAIN_OWNER, RENEW_DOMAIN, PUSH_DOMAIN, INTERNAL_TRANSFER_OUT_DOMAIN, INTERNAL_TRANSFER_IN_DOMAIN, RELEASE_TO_GANDI, TRANSFER_ON_RENEW, RESTORE_DOMAIN
      ],    # OPTIONAL
    );

    # Results:
    my $NextPageMarker = $ListOperationsResponse->NextPageMarker;
    my $Operations     = $ListOperationsResponse->Operations;

    # Returns a L<Paws::Route53Domains::ListOperationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/ListOperations>

=head1 ATTRIBUTES


=head2 Marker => Str

For an initial request for a list of operations, omit this element. If
the number of operations that are not yet complete is greater than the
value that you specified for C<MaxItems>, you can use C<Marker> to
return additional operations. Get the value of C<NextPageMarker> from
the previous response, and submit another request that includes the
value of C<NextPageMarker> in the C<Marker> element.



=head2 MaxItems => Int

Number of domains to be returned.

Default: 20



=head2 SortBy => Str

The sort type for returned values.

Valid values are: C<"SubmittedDate">

=head2 SortOrder => Str

The sort order for returned values, either ascending or descending.

Valid values are: C<"ASC">, C<"DESC">

=head2 Status => ArrayRef[Str|Undef]

The status of the operations.



=head2 SubmittedSince => Str

An optional parameter that lets you get information about all the
operations that you submitted after a specified date and time. Specify
the date and time in Unix time format and Coordinated Universal time
(UTC).



=head2 Type => ArrayRef[Str|Undef]

An arrays of the domains operation types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOperations in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

