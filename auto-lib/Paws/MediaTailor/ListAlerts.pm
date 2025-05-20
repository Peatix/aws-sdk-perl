
package Paws::MediaTailor::ListAlerts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAlerts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/alerts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::ListAlertsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ListAlerts - Arguments for method ListAlerts on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAlerts on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method ListAlerts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAlerts.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $ListAlertsResponse = $api . mediatailor->ListAlerts(
      ResourceArn => 'My__string',
      MaxResults  => 1,               # OPTIONAL
      NextToken   => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListAlertsResponse->Items;
    my $NextToken = $ListAlertsResponse->NextToken;

    # Returns a L<Paws::MediaTailor::ListAlertsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/ListAlerts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of alerts that you want MediaTailor to return in
response to the current request. If there are more than C<MaxResults>
alerts, use the value of C<NextToken> in the response to get the next
page of results.



=head2 NextToken => Str

Pagination token returned by the list request when results exceed the
maximum allowed. Use the token to fetch the next page of results.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAlerts in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

