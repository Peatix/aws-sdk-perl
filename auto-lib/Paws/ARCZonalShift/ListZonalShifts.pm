
package Paws::ARCZonalShift::ListZonalShifts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceIdentifier');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListZonalShifts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/zonalshifts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ARCZonalShift::ListZonalShiftsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::ListZonalShifts - Arguments for method ListZonalShifts on L<Paws::ARCZonalShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListZonalShifts on the
L<AWS ARC - Zonal Shift|Paws::ARCZonalShift> service. Use the attributes of this class
as arguments to method ListZonalShifts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListZonalShifts.

=head1 SYNOPSIS

    my $arc-zonal-shift = Paws->service('ARCZonalShift');
    my $ListZonalShiftsResponse = $arc -zonal-shift->ListZonalShifts(
      MaxResults         => 1,                         # OPTIONAL
      NextToken          => 'MyString',                # OPTIONAL
      ResourceIdentifier => 'MyResourceIdentifier',    # OPTIONAL
      Status             => 'ACTIVE',                  # OPTIONAL
    );

    # Results:
    my $Items     = $ListZonalShiftsResponse->Items;
    my $NextToken = $ListZonalShiftsResponse->NextToken;

    # Returns a L<Paws::ARCZonalShift::ListZonalShiftsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift/ListZonalShifts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of objects that you want to return with this call.



=head2 NextToken => Str

Specifies that you want to receive the next page of results. Valid only
if you received a C<nextToken> response in the previous request. If you
did, it indicates that more output is available. Set this parameter to
the value provided by the previous call's C<nextToken> response to
request the next page of results.



=head2 ResourceIdentifier => Str

The identifier for the resource that you want to list zonal shifts for.
The identifier is the Amazon Resource Name (ARN) for the resource.



=head2 Status => Str

A status for a zonal shift.

The C<Status> for a zonal shift can have one of the following values:

=over

=item *

B<ACTIVE>: The zonal shift has been started and active.

=item *

B<EXPIRED>: The zonal shift has expired (the expiry time was exceeded).

=item *

B<CANCELED>: The zonal shift was canceled.

=back


Valid values are: C<"ACTIVE">, C<"EXPIRED">, C<"CANCELED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListZonalShifts in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

